local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local k = vim.keymap.set

--Remap space as leader key
k("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

k("n", "<leader>pv", vim.cmd.Ex)
k("n", "<A-q>", ":LazyGit<CR>", opts)

-- Better splitting pane
k("n", "<leader>\\", ":vsplit<CR>", opts)
k("n", "<leader>-", ":split<CR>", opts)

-- Better window navigation
k("n", "<C-h>", "<C-w>h", opts)
k("n", "<C-j>", "<C-w>j", opts)
k("n", "<C-k>", "<C-w>k", opts)
k("n", "<C-l>", "<C-w>l", opts)
k("n", "<C-w>", ":bdelete<CR>", opts)

-- Resize with arrows
k("n", "<C-Up>", ":resize -2<CR>", opts)
k("n", "<C-Down>", ":resize +2<CR>", opts)
k("n", "<C-Left>", ":vertical resize -2<CR>", opts)
k("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
k("n", "<S-l>", ":bnext<CR>", opts)
k("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
k("n", "<A-j>", ":m .+1<CR>==", opts)
k("n", "<A-k>", ":m .-2<CR>==", opts)

-- Stay in indent mode
k("v", "<", "<gv^", opts)
k("v", ">", ">gv^", opts)

-- Move text up and down
k("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
k("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
k("v", "p", '"_dP', opts)

-- Move text up and down
k("x", "J", ":m '>+1<CR>gv=gv", opts)
k("x", "K", ":m '<-2<CR>gv=gv", opts)
k("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
k("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Toggle theme
function ToggleTheme()
    local current_theme = vim.api.nvim_exec("colorscheme", true)
    local new_theme = (current_theme == "carbonfox") and "aura-dark" or "carbonfox"
    vim.cmd("colorscheme " .. new_theme)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

k("n", "<A-t>", ":lua ToggleTheme()<CR>", opts)
k("n", "<C-/>", ":ToggleTerm<CR>", opts)
k("n", "<leader>gf", vim.lsp.buf.format, opts)
