return {
	"famiu/bufdelete.nvim",
	config = function()
		vim.api.nvim_create_augroup("alpha_on_empty", { clear = true })
		vim.api.nvim_create_autocmd("User", {
			pattern = "BDeletePre *",
			group = "alpha_on_empty",
			callback = function()
				local bufnr = vim.api.nvim_get_current_buf()
				local name = vim.api.nvim_buf_get_name(bufnr)

				if name == "" then
					vim.cmd([[:Alpha | bd#]])
				end
			end,
		})
    vim.keymap.set('n', '<leader>bd', ':Bdelete<CR>', {})
	end,
}
