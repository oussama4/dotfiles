local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- change window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- resize
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files()<cr>", opts)
keymap("n", "<leader>g", "<cmd>lua require'telescope.builtin'.live_grep()<cr>", opts)
keymap("n", "<leader>b", "<cmd>lua require'telescope.builtin'.buffers()<cr>", opts)

keymap("n", "<leader>d", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
