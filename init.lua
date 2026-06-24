-- Leader key must be set before any mappings that use <leader>
vim.g.mapleader = " "

-- Options
vim.opt.hlsearch = true        -- highlight all search matches
vim.opt.incsearch = true       -- show matches as you type
vim.opt.ignorecase = true      -- case-insensitive search
vim.opt.number = true          -- absolute line numbers
vim.opt.relativenumber = true  -- relative line numbers

-- `remap = true` mirrors the recursive `:map`/`:imap` from the original vimrc.
-- Mode { "n", "v", "o" } matches `:map` (normal, visual+select, operator-pending).
local map_modes = { "n", "v", "o" }

-- imap jj <Esc>
vim.keymap.set("i", "jj", "<Esc>", { remap = true })

-- map <leader>f <C-f>   (page down)
vim.keymap.set(map_modes, "<leader>f", "<C-f>", { remap = true })

-- map <leader>b <C-b>   (page up)
vim.keymap.set(map_modes, "<leader>b", "<C-b>", { remap = true })

-- map <leader>p "0p     (paste from yank register)
vim.keymap.set(map_modes, "<leader>p", '"0p', { remap = true })

-- map <leader>h :noh<CR>   (clear search highlight)
vim.keymap.set(map_modes, "<leader>h", ":noh<CR>", { remap = true })

-- map <leader>d d$A    (delete to end of line, then append) -- normal mode only
vim.keymap.set("n", "<leader>d", "d$A", { remap = true })

-- map <leader>4 $      (jump to end of line)
vim.keymap.set(map_modes, "<leader>4", "$", { remap = true })
