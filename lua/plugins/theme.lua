local opt = vim.opt

opt.relativenumber = false

return {
  {
    "LazyVim/LazyVim",
    dependencies = {
      {
        dir = "~/.config/nvim/lua/plugins/themes/cryoviking.nvim",
        lazy = false,
      },
    },
    opts = {
      colorscheme = "cryoviking",
    },
  },
}
