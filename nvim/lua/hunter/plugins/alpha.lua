return{
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "██╗  ██╗██╗   ██╗███╗   ██╗████████╗███████╗██████╗",
      "██║  ██║██║   ██║████╗  ██║╚══██╔══╝██╔════╝██╔══██╗",
      "███████║██║   ██║██╔██╗ ██║   ██║   █████╗  ██████╔╝",
      "██╔══██║██║   ██║██║╚██╗██║   ██║   ██╔══╝  ██╔══██╗",
      "██║  ██║╚██████╔╝██║ ╚████║   ██║   ███████╗██║  ██║",
      "╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝"
    }

    dashboard.section.buttons.val = {
      dashboard.button("e"," New File","<cmd>ene<CR>"),
      dashboard.button("<leader>ee"," File Explorer","<cmd>NvimTreeToggle<CR>"),
      dashboard.button("<leader>ff","󰱼 Find File","<cmd>Telescope find_files<CR>"),
      dashboard.button("<leader>fs"," Find Word","<cmd>Telescope live_grep<CR>"),
      dashboard.button("q"," Quit","<cmd>qa<CR>")
    }

    alpha.setup(dashboard.opts)

    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end
}
