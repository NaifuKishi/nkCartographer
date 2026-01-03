---
name: Lua Scripting Guidelines
language: lua
globs: "**/*.lua"
alwaysApply: true
description: Enforces scripting best practices for RIFT addon development
---

# Lua Scripting Guidelines

## Event Handling
- id: lua-event-registration
  pattern: "[A-Z_][A-Z0-9_]*:RegisterEvent\("
  message: "Use consistent event registration (e.g., `MyAddon:RegisterEvent('PLAYER_LOGIN')`)."
  severity: info

- id: lua-callback-naming
  pattern: "function [a-z][a-zA-Z0-9]*_[a-zA-Z0-9]+"
  message: "Use camelCase for event callback functions (e.g., `onPlayerLogin`)."
  severity: info

## API Usage
- id: lua-api-consistency
  pattern: "[A-Z][a-zA-Z0-9_]*\("
  message: "Use consistent API function calls (e.g., `UnitHealth('player')`)."
  severity: info

- id: lua-error-handling
  pattern: "[^p]call\("
  message: "Use `pcall` for API calls that may fail."
  severity: warning

## Addon Structure
- id: lua-modular-addon
  pattern: "local [A-Z][a-zA-Z0-9_]* = {}"
  message: "Structure addons as modules (e.g., `local MyAddon = {}`)."
  severity: info

- id: lua-versioning
  pattern: "-- @version"
  message: "Include addon version in metadata."
  severity: info

## Saved Variables
- id: lua-saved-vars
  pattern: "[A-Z_][A-Z0-9_]*_SV"
  message: "Use `_SV` suffix for saved variables tables (e.g., `MyAddon_SV`)."
  severity: info

## Localization
- id: lua-localize-strings
  pattern: "L\\[\"[^\"]+\\\"\\]"
  message: "Localize strings for internationalization."
  severity: info

## Frame Management
- id: lua-frame-creation
  pattern: "CreateFrame\("
  message: "Use `CreateFrame` for UI elements and manage frame lifecycle."
  severity: info

## Dependency Management
- id: lua-dependency-declaration
  pattern: "-- @depends"
  message: "Declare addon dependencies with `@depends` comments."
  severity: info

## Security
- id: lua-secure-code
  pattern: "loadstring\("
  message: "Avoid using `loadstring`; use secure alternatives."
  severity: warning
