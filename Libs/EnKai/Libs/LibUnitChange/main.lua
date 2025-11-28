--[[
   _LibUnitChange
    Description:
        Provides a simplified abstraction for unit change events in RIFT.
        Enhances the existing Event.Unit.Remove event to be more developer-friendly.
        Allows tracking of unit specifier changes with a simpler event system.
    Parameters:
        None (library initialization)
    Returns:
        Library.LibUnitChange: The initialized library object
    Process:
        1. Initializes internal data structures for tracking unit changes
        2. Provides a Register function to create unit change events
        3. Processes unit changes and notifies registered callbacks
        4. Maintains current state of unit specifiers
    Notes:
        - This library helps avoid the complexity of tracking infinite .target chaining
        - Provides a simpler way to monitor unit changes in RIFT
        - Events are created under Event.LibUnitChange.[unitspec].Change
        - Callbacks receive the new unit ID or "false" for no unit
    Available Methods:
        - Register(identifier): Creates and returns an event for tracking unit changes
]]

if not Library then Library = {} end
if not Library.LibUnitChange then Library.LibUnitChange = {} end

local spec = {}
local id = {[false] = {}}
local current = {}
local registered = {}
local lookups = {}

local function process(changes)
  -- figure out what's different
  local refreshes = {}
  for change in pairs(changes) do
    if id[change] then
      for element in pairs(id[change]) do
        refreshes[element] = true
        
        -- Add chains as well
        if spec[element] then
          for chain in pairs(spec[element]) do
            refreshes[chain] = true
          end
        end
      end
      
      id[change] = nil
    end
  end
  
  -- From here, we need to take every change and link it up to the new things it points to
  local newresults = Inspect.Unit.Lookup(refreshes)
  
  for unitspec in pairs(refreshes) do
    local unitid = newresults[unitspec] or false
    if not id[unitid] then
      id[unitid] = {}
    end
    id[unitid][unitspec] = true
    
    if current[unitspec] ~= unitid then
      registered[unitspec](unitid)
      current[unitspec] = unitid
    end
  end
end

--[[
   _Register
    Description:
        Creates an event for tracking changes to a specific unit specifier.
        The event will be triggered whenever the unit referenced by the specifier changes.
    Parameters:
        identifier (string): The unit specifier to track (e.g., "player.target")
    Returns:
        event (table): The event table for the registered unit specifier
    Process:
        1. Checks if the identifier is already registered
        2. Initializes tracking for the new unit specifier
        3. Creates the event in the Event.LibUnitChange hierarchy
        4. Triggers an initial update to get the current state
        5. Returns the event table for the caller to attach callbacks
    Notes:
        - The event will be triggered with the new unit ID or "false" when no unit exists
        - The event is created under Event.LibUnitChange.[identifier].Change
        - Callbacks should handle both unit ID changes and "false" values
    Example:
        local targetEvent = Library.LibUnitChange.Register("player.target")
        Command.Event.Attach(targetEvent, function(newUnitId)
            if newUnitId then
                print("New target: " .. newUnitId)
            else
                print("No target")
            end
        end)
]]
function Library.LibUnitChange.Register(identifier)
  if lookups[identifier] then
    return lookups[identifier]
  end
  
  if not id[false] then id[false] = {} end
  id[false][identifier] = true
  current[identifier] = false
        
  local acum = nil
  for subset in identifier:gmatch("[^.]+") do
    if acum then
      acum = acum .. "." .. subset
    else
      acum = subset
    end
    
    if not spec[acum] then
      spec[acum] = {}
    end
    spec[acum][identifier] = true
  end
    
  registered[identifier], lookups[identifier] = Utility.Event.Create("LibUnitChange", identifier .. ".Change")
  
  process({[false] = false}) -- It's a fake message, but it's one that will get us to poll *everything*, which is exactly what we need right now.
  
  return lookups[identifier]
end

table.insert(Event.Unit.Remove, {process, "LibUnitChange", "Update"})
