# Neovim Config Cleanup Design

## Goal

Clean up the Neovim configuration by removing dead code, deleting empty plugin files, and standardizing the remaining configs for maintainability.

## Approach

- **Delete entirely** — Remove disabled plugins completely (LazyVim defaults still work)
- **Consistent style** — Keep separate files, standardize format
- **Keep autocmds together** — One file, just clean up comments

## Files to Delete

| File | Reason |
|------|--------|
| `lua/plugins/copilot.lua` | Returns empty `{}` |
| `lua/plugins/nvim-cmp.lua` | Returns empty `{}`, extensive commented code |
| `lua/plugins/nvim-ufo.lua` | Returns empty `{}`, 80+ lines of commented config |
| `lua/plugins/muren.lua` | Returns empty `{}` |
| `lua/plugins/telescope.lua` | Returns empty `{}`, commented fzf-native setup |
| `lua/plugins/colorscheme.lua` | Returns empty `{}`, only commented alternatives |

## Files to Clean

| File | Issue | Fix |
|------|-------|-----|
| `lua/plugins/neo-tree.lua` | Redundant comment | Remove "customize keymaps" comment |
| `lua/plugins/mini-surround.lua` | Stale comment block | Remove comment, keep config |
| `lua/plugins/toggleterm.lua` | Explanatory comments | Remove redundant comments |
| `lua/plugins/lsp-config.lua` | Mixed styles | Standardize structure, clean comments |
| `lua/config/options.lua` | Commented UFO block | Remove ~15 lines of dead code |

## Files Already Clean (No Changes)

- `lua/plugins/which-key.lua`
- `lua/plugins/treesitter.lua`
- `lua/plugins/mini-splitjoin.lua`
- `lua/plugins/mini-trailspace.lua`
- `lua/plugins/mark.lua`
- `lua/plugins/project.lua`
- `lua/config/keymaps.lua`
- `lua/config/autocmds.lua`
- `lua/config/lazy.lua`

## Expected Result

- 6 files deleted (~200 lines of dead code removed)
- 5 files cleaned (consistent style, no stale comments)
- Cleaner, more maintainable configuration
