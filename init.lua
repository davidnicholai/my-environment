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

-- Bootstrap lazy.nvim (plugin manager)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      -- macOS has no push notification for appearance changes in a TUI, so
      -- re-check on focus (e.g. alt-tabbing back after the OS switches at
      -- sunset/sunrise) rather than only once at startup.
      local function sync_with_os()
        local is_dark = vim.fn.system("defaults read -g AppleInterfaceStyle 2>/dev/null"):match("Dark") ~= nil
        vim.o.background = is_dark and "dark" or "light"
        require("catppuccin").setup({ flavour = is_dark and "mocha" or "latte" })
        vim.cmd.colorscheme("catppuccin")
      end
      sync_with_os()
      vim.api.nvim_create_autocmd("FocusGained", { callback = sync_with_os })
    end,
  },
})
