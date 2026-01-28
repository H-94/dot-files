return{
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {},
  config = function()
    local wk = require("which-key")

    wk.add({
      { "<leader>s", group = "splits" },
      { "<leader>t", group = "tabs" },
      { "<leader>n", group = "search" },

      { "<leader>f", group = "find" },
      { "<leader>e", group = "explorer" },
      { "<leader>x", group = "diagnostics" },
      { "<leader>c", group = "code" },
      { "<leader>r", group = "rename" },
      { "<leader>d", group = "diagnostics" },

      { "<leader>+", desc = "increment number" },
      { "<leader>-", desc = "decrement number" },
    })
  end,
}
