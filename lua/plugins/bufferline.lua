return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup({
      options = {
        indicator = {
          icon = '▎',
          style = 'icon', -- underline, none
        },
        offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
        mode = "tabs",
        close_command = "bdelete! %d",       -- can be a string | function, | false see "Mouse actions"
        right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
        left_mouse_command = "buffer %d",    -- can be a string | function, | false see "Mouse actions"
        middle_mouse_command = nil,          -- can be a string | function, | false see "Mouse actions"
        separator_style = "thin",
        buffer_close_icon = '󰅖',
        modified_icon = '● ',
        close_icon = ' ',
        left_trunc_marker = ' ',
        right_trunc_marker = ' ',
        color_icons = true,
        max_name_length = 18,
        tab_size = 18,
      }
    })
    vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", {})
  end
}
