require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>", { desc = "Save file in Interactive mode" })
map({ "i", "n" }, "<C-q>", "<cmd> q <cr>", { desc = "Quit buffer in the Interactive view" })
map({ "i" }, "<C-z>", "<ESC>u", { desc = "Undo in Interactive mode" })

map({"n", "i"}, "<C-y>", "<cmd>redo<CR>", { desc = "Redo in Interactive mode" })

map("n", "<C-a>", "ggVG", { desc = "Select all text in file in Normal mode" })

map("v", "<C-c>", '"+y', { desc = "Works in Visual mode; copies to system clipboard" })

map("i", "<C-v>", '<C-r>+', { desc = "Works in Interactive mode; pastes from the system clipboard" })

map("v", "<C-x>", '"+d', { desc = "Works in Visual mode; cuts to the system clipboard" })
-- map("v", "<leader>i", "inoremap <key> <Esc>i", { desc = "Move from Visual mode to Interactive mode" })
map("i", "C-k", "<Plug>(nvim.lsp.ctrl-s)", { desc = "Use Ctrl+K to cycle between function signatures in your LSP" })

-- If I want to map Ctrl+Backspace to delete word, I have to map the Esc-BS key to Ctrl+w because 
-- I remap Ctrl+BS to Esc+BS for Emacs compatibility, to achieve the functionality in Ghostty ZSH
vim.keymap.set({ "i", "n" }, "<M-BS>", "<C-w>", { noremap = true, silent = true })

-- Use Shift + Arrow keys to move the selection
map("n", "<S-Up>", "v<Up>")
map("n", "<S-Down>", "v<Down>")
map("n", "<S-Left>", "v<Left>")
map("n", "<S-Right>", "v<Right>")

map("n", "<leader>q", "<cmd>bd<CR>", { desc = "Close current buffer" } )
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save current buffer" })
map("n", "<leader>x", "<cmd>wq<CR>", { desc = "Save and close current buffer" })

map("n", "<C-p>", "<cmd>Telescope find_files<CR>", { desc = "Open Telescope to fuzzy find files"})

