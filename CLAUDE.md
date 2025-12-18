# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal Neovim configuration built on [LazyVim](https://lazyvim.github.io/) - a Neovim setup powered by lazy.nvim.

## Commands

```bash
# Format Lua files
stylua lua/

# Check Neovim config for errors (run from nvim)
:checkhealth

# Sync plugins (run from nvim)
:Lazy sync

# Update plugins (run from nvim)
:Lazy update
```

## Architecture

**Entry Point**: `init.lua` → loads `lua/config/lazy.lua` which bootstraps lazy.nvim and LazyVim

**Directory Structure**:
- `lua/config/` - Core configuration (options, keymaps, autocmds, lazy.nvim setup)
- `lua/plugins/` - Custom plugin specs that extend/override LazyVim defaults
- `lazyvim.json` - LazyVim extras configuration (language packs, editor features)

**Configuration Layers**:
1. LazyVim base (`LazyVim/LazyVim`) - provides sensible defaults
2. LazyVim extras (`lazyvim.json`) - opt-in language support and features
3. Custom plugins (`lua/plugins/`) - user overrides and additions

## Key Customizations

**Enabled Language Extras**: TypeScript, Go, Terraform, Docker, Helm, Ansible, .NET, YAML, Markdown, Nix

**Disabled Plugins** (in `lua/plugins/disabled.lua`):
- `mini.pairs` - auto-pairing
- `flit.nvim` - f/t motions

**Notable Custom Settings**:
- Black background enforced via ColorScheme autocmd
- Terraform files: `.tfvars` → hcl filetype, `.tftpl` → terraform filetype
- YAML LSP configured to ignore key ordering
- IlluminatedWord highlights use underline style

## Code Style

Lua files use StyLua with: 2-space indentation, 120 column width (see `stylua.toml`)
