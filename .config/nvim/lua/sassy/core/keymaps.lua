vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>|", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>-", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
