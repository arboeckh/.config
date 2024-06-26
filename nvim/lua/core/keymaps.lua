-- Set leader key to spac
vim.g.mapleader = " "

--clear search highlighting with esc
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

--open neovim native file navigation
vim.keymap.set("n", "<leader>hf", vim.cmd.Ex, { desc = "[N]avigate [F]iles" })

--diagnostics keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })


require('which-key').register {
	['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
	['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
	['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
	['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
	['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
}

--telescope
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles'})
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, {desc = '[S]earch by [G]rep'})
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp'})
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })

vim.keymap.set('n', '<leader>sn', function()
	require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim files' })

vim.keymap.set('n', '<leader>so', function()
	require('telescope.builtin').find_files { cwd =   '/Users/ab/Library/Mobile Documents/iCloud~md~obsidian/Documents'}
end, { desc = '[S]earch [O]bsidian files' })

vim.keymap.set('n', '<leader>/', function()
	-- You can pass additional configuration to Telescope to change the theme, layout, etc.
	require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
		winblend = 10,
		previewer = false,
	})
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>s/', function()
	require('telescope.builtin').live_grep {
		grep_open_files = true,
		prompt_title = 'Live Grep in Open Files',
	}
end, { desc = '[S]earch [/] in Open Files' })

--always keey the cursor centered when doing C-u or C-d
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

--easier window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

--navigating buffers
vim.keymap.set("n", "tj", ":bp <CR>")
vim.keymap.set("n", "tk", ":bn <CR>")
vim.keymap.set("n", "tl", ":bd <CR>")

--make exiting and save in one binding
vim.keymap.set("i", "<C-]>", "<Esc>:w<CR>")

vim.keymap.set("n", "<C-]>", ":w<CR>")

vim.keymap.set("v", "K", ":m '<-2<CR>gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader><leader>", ":so<CR>")

--to run node files, TODO: make this only acitve in the file itself
vim.keymap.set("n", "<leader>nn", ":e ~/Library/Mobile Documents/iCloud~md~obsidian/Documents/in/")

vim.keymap.set("n", "<leader>sq", ":!psql -U ab -d workout-app < sql/db-setup.sql <CR>")


--ntree
vim.keymap.set("n", "<leader>nt", ":NvimTreeToggle<CR>", { desc = "[N]vim [T]ree" })
