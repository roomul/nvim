return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    local function footer()
      local stats = require("lazy").stats()
      local total_plugins = stats.count
      local version = vim.version()
      local ms = math.floor(stats.startuptime * 100 + 0.5) / 100

      return " " .. version.major .. "." .. version.minor .. "." .. version.patch .. "  " .. total_plugins .. " 󱑃 " .. ms .. " ms"
    end

    dashboard.section.header.val = {
      -- [[                                                                     ]],
      -- [[       ████ ██████           █████      ██                     ]],
      -- [[      ███████████             █████                             ]],
      -- [[      █████████ ███████████████████ ███   ███████████   ]],
      -- [[     █████████  ███    █████████████ █████ ██████████████   ]],
      -- [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      -- [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      -- [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      -- [[                                                                       ]],
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "󰎔 New File", ":ene <BAR> startinsert <CR>"),
      -- dashboard.button("SPC wr", "󰙰 Restore Session", ":SessionRestore <CR>"),
      dashboard.button("SPC SPC", "󰥨 Find file", ":Telescope find_files <CR>"),
      dashboard.button("SPC o", "󱃚 Recent", ":Telescope oldfiles <CR>"),
      dashboard.button("SPC e", "󰪶 File Manager", ":Neotree <CR>"),
      dashboard.button("SPC m", "󰒋 Mason: LSP Manager", ":Mason <CR>"),
      dashboard.button("SPC l", "󰏗 Lazy: Package Manager", ":Lazy <CR>"),
      dashboard.button("SPC c", " Configs folder", ":Neotree ~/.config/nvim <CR>"),
      dashboard.button("q", "󰈆 Quit", ":qa <CR>"),
    }

    dashboard.section.footer.val = footer()
    alpha.setup(dashboard.opts)
  end
}
