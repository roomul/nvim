return {
	"goolord/alpha-nvim",
	dependencies = {
		"echasnovski/mini.icons",
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Header
		dashboard.section.header.val = {
			[[                                                      ]],
			[[  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗  ]],
			[[  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║  ]],
			[[  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║  ]],
			[[  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║  ]],
			[[  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║  ]],
			[[  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝  ]],
			[[                                                      ]],
		}

    -- Menu
    dashboard.section.buttons.val = {
      dashboard.button( "e", " New file" , ":ene <BAR> startinsert <CR>"),
      dashboard.button( "f", " Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
      dashboard.button( "r", " Recent"   , ":Telescope oldfiles<CR>"),
      dashboard.button( "s", " Session"   , [[<cmd> lua require("persistence").load() <cr>]]),
      dashboard.button( "m", "󱔛 Mason"   , ":Mason<CR>"),
      dashboard.button( "l", " Lazy"   , ":Lazy<CR>"),
      dashboard.button( "s", " Config" , ":Neotree toggle ~/.config/nvim <CR>"),
      dashboard.button( "q", " Quit", ":qa<CR>"),
    }

    -- Footer
    local function footer()
      local ver = vim.version()
      local stat = require("lazy").stats()
      local ms = (math.floor(stat.startuptime * 100 + 0.5) / 100)
      return "⚡Lazy  " .. stat.count .. "  " .. stat.loaded .. " 󰓅 " .. ms .. "ms" .. "  " .. ver.major .. "." .. ver.minor .. "." .. ver.patch
    end
    dashboard.section.footer.val = footer()

    alpha.setup(dashboard.opts)
    vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
	end,
}
