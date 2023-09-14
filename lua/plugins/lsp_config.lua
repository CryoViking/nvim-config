return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      {
        "fatih/vim-go"
      },
      {
        "folke/neoconf.nvim",
        cmd = "Neoconf",
        config = true,
      },
      {
        "folke/neodev.nvim",
        opts = {},
      },
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      {
        "hrsh7th/cmp-nvim-lsp",
        cond = function()
          return require("lazyvim.util").has("nvim-cmp")
        end,
      },
    },
    opts = {
      servers = {
        gopls = {
          cmd = { "gopls" },
          filetypes = { "go", "gomod", "gowork", "gotmpl" },
        },
        ols = {
          cmd = { "ols" },
          filetypes = { "odin" },
          rootPatterns = { "ols.json", ".git" },
          init_options = {
            enable_format = true,
            enable_hover = true,
            enable_document_symbols = true,
            -- enable_semantic_tokens = true, // Don't want highlighting
            enable_inlay_hints = true,
            enable_snippets = false,
            enable_references = true,
            enable_rename = true,
            enable_label_details = true,
          },
        },
      },
    },
  },
}
