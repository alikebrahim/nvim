local keymap = vim.keymap
local api = vim.api
local opts = { noremap = true, silent = true }


-- [[ Basic Keymaps ]]
-- Management
keymap.set("i", "jj", "<Esc>")
keymap.set("i", "<C-w>", "<C-o>w")
keymap.set("i", "<C-b>", "<C-o>b")
keymap.set("i", "<C-e>", "<C-o>e")
keymap.set("i", "<C-l>", "<C-o>l")
keymap.set("i", "<C-h>", "<C-o>h")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("n", "<leader>m", ":Mason<Return>")
keymap.set("n", "<leader>l", ":Lazy<Return>")
keymap.set("n", "<leader>n", ":Noice<Return>")

-- Comments
api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })
api.nvim_set_keymap("x", "<C-_>", "gcc<C-c>", { noremap = false })

-- vim-go
----GoAddTags: JSON
keymap.set("n", "<Leader>gat", ":GoAddTags<Return>")

-- Macros
keymap.set("n", "Q", "@qj")
keymap.set("x", "Q", ":norm @q<Return>")
-- [[ end Basic ]]

-- [[ Kickstart.nvim keymaps ]]
-- Keymaps for better default experience
-- See `:help keymap.set()`
keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
-- [[ end Kickstart.nvim ]]

-- [[ Remap from devaslife ]]
-- throw away x delete
keymap.set("n", "x", '"_x')

-- increament and decreament digits
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- select all document
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "<tab><tab>", ":tabedit<Return>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split Window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move Window
keymap.set("n", "sh", "<C-w>h", opts)
keymap.set("n", "sj", "<C-w>j", opts)
keymap.set("n", "sk", "<C-w>k", opts)
keymap.set("n", "sl", "<C-w>l", opts)

-- Resize Window
keymap.set("n", "<C-w>l", "<C-w>>", opts)
keymap.set("n", "<C-w>h", "<C-w><", opts)
keymap.set("n", "<C-w>j", "<C-w>-", opts)
keymap.set("n", "<C-w>k", "<C-w>+", opts)
-- [[ end devaslife ]]

-- [[ Remap from thePrimagen ]]
-- netrw
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move up and down with cursor at the center of the buffer
api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true })
api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true })

-- Center search
api.nvim_set_keymap('n', 'n', 'nzzzv', { noremap = true })
api.nvim_set_keymap('n', 'N', 'Nzzzv', { noremap = true })
api.nvim_set_keymap('n', '*', '*zzzv', { noremap = true })

-- Persist yanked in _ buffer
api.nvim_set_keymap('x', '<leader>p', '"_dP', { noremap = true, silent = true })
-- [[ end thePrimagen ]]
