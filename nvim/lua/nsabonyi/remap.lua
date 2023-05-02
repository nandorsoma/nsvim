vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--no more silly paste
vim.keymap.set("x", "<leader>p", "\"_dP")

--yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

--movements
vim.keymap.set("n", "<S-k>", "<C-u>")
vim.keymap.set("n", ",", "<C-u>")
vim.keymap.set("n", "<S-j>", "<C-d>")
vim.keymap.set("n", "m", "<C-d>")

