-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- https://www.lazyvim.org/keymaps
-- Add any additional keymaps here
-- vim.keymap.set("n", "<tab>", ":tabnext<CR>")
-- vim.keymap.set("n", "<S-tab>", ":tabprev<CR>")

-- Buffers cycle usings TAB
vim.keymap.set("n", "<tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-tab>", ":bNext<CR>")

-- Completion TOGGLE
-- vim.keymap.set("n", "<leader>p", '<cmd>lua require("cmp").setup { enabled = true }<cr>',  { desc = "Enable completion"  })
-- vim.keymap.set("n", "<leader>P", '<cmd>lua require("cmp").setup { enabled = false }<cr>', { desc = "Disable completion" })

-- Telescope Keymaps
-- vim.keymap.set('n', '<leader>fs', require("telescope").extensions.live_grep_args.live_grep_args, { desc = "GREP", noremap = true })


-- these keep the cursor in the middle when scrolling with ctrl d and u
-- from https://github.com/ThePrimeagen/init.lua
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- and these are for searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- "Copies whole file to CLIPBOARD
vim.keymap.set("n", "<leader>Z", ":%w !xclip -i -sel c<CR><CR>")

vim.keymap.set("n", "<leader>ep", function ()
  require('fzf-lua').files {
    cwd = vim.fs.joinpath( vim.fn.stdpath("data"), "lazy")
  } end)
