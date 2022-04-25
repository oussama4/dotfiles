require "user.vars"
require "user.opts"
require "user.keymaps"
require "user.plug"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require 'user.treesitter'
require 'user.alpha'

require("lualine").setup {
    options = {
	theme = 'tokyonight'
    },
}

require("bufferline").setup{
    options = {
	enforce_regular_tabs = true
    }
}

local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
  return
end


gitsigns.setup {
    current_line_blame = true,
    current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
    
    on_attach = function(bufnr)
	local function map(mode, lhs, rhs, opts)
	    opts = vim.tbl_extend('force', {noremap = true, silent = true}, opts or {})
	    vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
	end

	-- Navigation
	map('n', ']c', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", {expr=true})
	map('n', '[c', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", {expr=true})

	-- Actions
	map('n', '<leader>hs', ':Gitsigns stage_hunk<CR>')
	map('v', '<leader>hs', ':Gitsigns stage_hunk<CR>')
	map('n', '<leader>hr', ':Gitsigns reset_hunk<CR>')
	map('v', '<leader>hr', ':Gitsigns reset_hunk<CR>')
	map('n', '<leader>sb', '<cmd>Gitsigns stage_buffer<CR>')
	map('n', '<leader>hu', '<cmd>Gitsigns undo_stage_hunk<CR>')
	map('n', '<leader>rb', '<cmd>Gitsigns reset_buffer<CR>')
	map('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>')
	map('n', '<leader>hb', '<cmd>lua require"gitsigns".blame_line{full=true}<CR>')
	map('n', '<leader>tb', '<cmd>Gitsigns toggle_current_line_blame<CR>')
	map('n', '<leader>hd', '<cmd>Gitsigns diffthis<CR>')
	map('n', '<leader>hD', '<cmd>lua require"gitsigns".diffthis("~")<CR>')
	map('n', '<leader>td', '<cmd>Gitsigns toggle_deleted<CR>')

	-- Text object
	map('o', 'ih', ':<C-U>Gitsigns select_hunk<CR>')
	map('x', 'ih', ':<C-U>Gitsigns select_hunk<CR>')
    end 
}
require('nvim-autopairs').setup{}
require("toggleterm").setup{}

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
