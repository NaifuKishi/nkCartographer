---
name: Lua Performance Rules
language: lua
globs: "**/*.lua"
alwaysApply: true
description: Enforces performance optimizations and best practices for Lua code
---

# Lua Performance Rules

## Loop Optimization
- id: lua-avoid-table-creation-in-loops
  pattern: "for[^\n]+do[^\n]+{[^\n]+}"
  message: "Avoid creating tables inside loops; preallocate when possible."
  severity: warning

- id: lua-use-ipairs-pairs
  pattern: "for i=1,#t do"
  message: "Use `ipairs` for arrays and `pairs` for hash tables."
  severity: info

- id: lua-minimize-loop-work
  pattern: "for[^\n]{50,}"
  message: "Minimize work inside loop bodies; move invariant code outside."
  severity: warning

## Memory Management
- id: lua-weak-references
  pattern: "setmetatable\({}, {__mode = '[kv]'}"
  message: "Use weak references to avoid memory leaks where appropriate."
  severity: info

- id: lua-object-pooling
  pattern: "local pool = {}"
  message: "Use object pooling for frequently allocated objects."
  severity: info

## String Handling
- id: lua-avoid-string-concat
  pattern: "\.\.\."
  message: "Avoid string concatenation in loops; use `table.concat`."
  severity: warning

- id: lua-buffer-io
  pattern: "io\.read\(\*a\)"
  message: "Buffer IO operations for better performance."
  severity: info

## LuaJIT Optimizations
- id: lua-simple-hot-paths
  pattern: "if[^\n]{30,}"
  message: "Keep hot code paths simple for JIT compilation."
  severity: warning

- id: lua-ffi-usage
  pattern: "ffi\."
  message: "Use FFI for C data structure access when available."
  severity: info

## Global Access
- id: lua-localize-globals
  pattern: "_G\.[a-zA-Z_][a-zA-Z0-9_]+"
  message: "Localize frequently used global functions/variables."
  severity: warning

## Profiling
- id: lua-profile-code
  pattern: "-- TODO: profile"
  message: "Profile code with realistic data sets to identify bottlenecks."
  severity: info

## Common Anti-Patterns
- id: lua-avoid-mixed-tables
  pattern: "t\[1\] = .*; t\['key'\] ="
  message: "Avoid mixing array and hash access patterns in the same table."
  severity: warning

- id: lua-cache-expensive-calls
  pattern: "math\.[a-z]+\s*\("
  message: "Cache results of expensive function calls outside loops."
  severity: info
