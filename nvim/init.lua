require('user.vars')
require('user.opts')
require('user.keymaps')
require('user.plug')
require('user.cmp')
require('user.lsp')
require('user.telescope')

require('lualine').setup {
    options = {
	theme = 'tokyonight'
    },
}

require('gitsigns').setup {
    current_line_blame_formatter = "<author>, <author_time:%R> - <summary>"
}

require("bufferline").setup{}

