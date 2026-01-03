---
name: Lua Documentation Rules
language: lua
globs: "**/*.lua"
alwaysApply: true
description: Enforces consistent and thorough documentation for Lua code
---

# Lua Documentation Rules

## Module Documentation
- id: lua-module-doc
  pattern: "-- @module"
  message: "Every module should start with a @module comment block describing its purpose and usage."
  severity: warning

- id: lua-module-example
  pattern: "-- Example:"
  message: "Provide usage examples for modules."
  severity: info

## Function Documentation
- id: lua-function-doc
  pattern: "function[^(]+\\(\)"
  message: "Every function should have a comment block describing its parameters, return values, and purpose."
  severity: warning

- id: lua-param-doc
  pattern: "-- @param"
  message: "Document each parameter with @param tags."
  severity: info

- id: lua-return-doc
  pattern: "-- @return"
  message: "Document return values with @return tags."
  severity: info

## Inline Comments
- id: lua-inline-comment
  pattern: "--[^\n]+"
  message: "Use inline comments sparingly; prefer descriptive function/variable names."
  severity: info

- id: lua-complex-logic
  pattern: "if[^\n]{20,}"
  message: "Add comments for complex logic or non-obvious code sections."
  severity: info

## Block Comments
- id: lua-block-comment
  pattern: "--\\[\\["
  message: "Use block comments (--[[ ... ]) for multi-line explanations and section headers."
  severity: info

## API Documentation
- id: lua-api-doc
  pattern: "-- @field"
  message: "Document public API fields and methods."
  severity: info

## TODO Comments
- id: lua-todo-comment
  pattern: "-- TODO"
  message: "Avoid leaving TODO comments in production code; address or remove them."
  severity: warning

## Versioning
- id: lua-version-doc
  pattern: "-- @version"
  message: "Include a @version tag in module documentation."
  severity: info
