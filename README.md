# Nvimling

This is a port of Luke Smith's [vimling](https://github.com/LukeSmithxyz/vimling) Vimscripts, written in Lua.

## Installation

You can install `nvimling` with your favorite package manager (or using the native package feature of vim, see `:h packages`).

Using `packer.nvim`:

Add this to the `packer` `startup` function.

```lua
use {
  'hooregi/nvimling',
}
```

Using `lazy.nvim`:

Add this to your `init.lua`.

```lua
require('lazy').setup({{'hooregi/nvimling'}})
```

## Usage

This plugin comes with no mappings by default, so you'll need to define some.

```lua
-- DeadKeys toggle
vim.api.nvim_set_keymap('n', '<leader><leader>d', ':lua ToggleDeadKeys()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<leader><leader>d', '<esc>:lua ToggleDeadKeys()<CR>a', { noremap = true, silent = true })

-- IPA toggle
vim.api.nvim_set_keymap('n', '<leader><leader>i', ':lua ToggleIPA()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<leader><leader>i', '<esc>:lua ToggleIPA()<CR>a', { noremap = true, silent = true })

-- Prose toggle
vim.api.nvim_set_keymap('n', '<leader><leader>p', ':lua ToggleProse()<CR>', { noremap = true, silent = true })
```
