-- disable nvim notifications
return {
  {
    "rcarriga/nvim-notify",
    enabled = false,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      cmp.setup({
        mapping = {
          ["<Tab>"] = {
            c = cmp.config.disable,
          },
        },
      })
    end,
  },
  -- first: disable default <tab> and <s-tab> behavior in LuaSnip
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
}
