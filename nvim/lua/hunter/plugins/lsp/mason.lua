return {
  "williamboman/mason.nvim",
  dependencies = { "williamboman/mason-lspconfig.nvim" },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    
    mason.setup({
      ui = {
        icons = {
          package_installed = "",
          package_pending = "",
          package_uninstalled = ""
        }
      }
    })
    
    mason_lspconfig.setup({
      ensure_installed = {
        "clangd",
        "pyright",
        "lua_ls",
        "biome",

      },
      automatic_installation = true,
      handlers = {
        -- Default handler for all servers
        function(server_name)
          require("lspconfig")[server_name].setup({
            capabilities = require("cmp_nvim_lsp").default_capabilities()
          })
        end,
      }
    })
  end
}
