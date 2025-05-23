return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  --@module "neo-tree"
  --@type neotree.Config?
  opts = {},
  config = function()
    require("neo-tree").setup({
      enable_git_status = true,
      window = {
        width = 30,
      },
      default_component_configs = {
        container = {
          enable_character_fade = true,
        },
        indent = {
          indent_size = 2,
        },
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "󰜌",
        },
      },
    })
    vim.keymap.set("n", "<leader>e", "<Cmd>Neotree reveal toggle left<CR>")
  end
}
