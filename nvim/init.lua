require("config.lazy")
require("config.cmp")
require("config.lsp-config")
require("config.mason")
require("21andrewch")
vim.api.nvim_set_hl(0, "Normal", { bg = "none", fg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", fg = "none" })
vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]
vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]
vim.cmd[[hi NormalNC guibg=NONE ctermbg=NONE]]


-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
