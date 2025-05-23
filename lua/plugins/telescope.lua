return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    vim.keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    vim.keymap.set("n", "<leader>o", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    vim.keymap.set("n", "<leader>lg", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    vim.keymap.set("n", "<leader>gs", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
  end,
}
