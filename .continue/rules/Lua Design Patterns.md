---
name: Lua Design Patterns
language: lua
globs: "**/*.lua"
alwaysApply: true
description: Enforces Lua design patterns, readability, and performance optimizations
---

# Lua Design Patterns Rules

## Readability
- id: lua-readable-naming
  pattern: "[a-z][a-zA-Z0-9]*_[a-zA-Z0-9]+"
  message: "Use camelCase for variables and functions (e.g., `calculateTotalDamage`)."
  severity: warning

- id: lua-function-length
  pattern: "function[^)]+\)\n(?:[^\n]++\n){30,}"
  message: "Functions should be short (max 30 lines) for readability."
  severity: warning

- id: lua-comment-blocks
  pattern: "--[^\n]+"
  message: "Use block comments (--[[ ... ]) for multi-line explanations."
  severity: info

## Design Patterns
- id: lua-module-pattern
  pattern: "local M = {}"
  message: "Encapsulate code in modules using `local M = {}; return M`."
  severity: info

- id: lua-avoid-globals
  pattern: "[A-Z][a-zA-Z0-9_]* = "
  message: "Avoid global variables. Use `local` to limit scope."
  severity: warning

- id: lua-closure-pattern
  pattern: "function[^(]+\\([^)]*\\)\n.*\n.*end"
  message: "Consider using closures for data encapsulation."
  severity: info

## Performance
- id: lua-localize-frequent-access
  pattern: "_G\.[a-zA-Z_][a-zA-Z0-9_]+"
  message: "Localize frequently accessed global functions/variables."
  severity: warning

- id: lua-efficient-iteration
  pattern: "for k,v in [^p]+"
  message: "Use `pairs` for hash table iteration and `ipairs` for arrays."
  severity: info

## Object-Oriented Patterns
- id: lua-constructor-pattern
  pattern: "function [a-z_][a-zA-Z0-9_]*\(\\)\n.*\n.*return"
  message: "Use constructor functions to create objects (e.g., `local obj = MyClass()`)."
  severity: info

- id: lua-metatable-usage
  pattern: "setmetatable\("
  message: "Use metatables for object-oriented patterns (e.g., inheritance)."
  severity: info

## Error Handling
- id: lua-error-handling
  pattern: "[^p]call\("
  message: "Use `pcall` or `xpcall` for error handling in critical sections."
  severity: warning

## Documentation
- id: lua-document-modules
  pattern: "-- @module"
  message: "Document module purpose, usage, and examples."
  severity: info

- id: lua-document-functions
  pattern: "function[^(]+\\(\)"
  message: "Document function parameters, return values, and usage."
  severity: info