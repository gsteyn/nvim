-- key bindings
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>s", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":wq<CR>")
vim.keymap.set("n", "<leader>qa", ":wqa<CR>")

-- move selected line up/down and auto-fix indentation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected line up and fix indentation" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected line down and fix indentation" })

vim.keymap.set("i", "<C-c>", "<Esc>")

-- go back to previous buffer
vim.keymap.set("n", "<leader>b", "<cmd>b#<cr>")

-- Copy to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Copy to clipboard" })
vim.keymap.set("n", "<leader>Y", '"+yg_', { desc = "Copy to clipboard" })
vim.keymap.set("n", "<leader>yy", '"+yy', { desc = "Copy line to clipboard" })

-- Paste from clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>P", '"+P', { desc = "Paste from clipboard in line above cursor" })

