require("plugins")
require("lsp")
telescope = { builtin = require("telescope.builtin") }

vim.cmd("colorscheme codedark")
vim.api.nvim_create_user_command("E", "Vifm", {})

vim.api.nvim_command("set clipboard+=unnamedplus")
vim.api.nvim_command("set expandtab")
vim.api.nvim_command("set ignorecase")
vim.api.nvim_command("set number")
vim.api.nvim_command("set relativenumber")
vim.api.nvim_command("set shiftwidth=4")
vim.api.nvim_command("set smartcase")

vim.keymap.set("n", "<c-b>", telescope.builtin.buffers)
vim.keymap.set("n", "<c-f>", telescope.builtin.live_grep)
vim.keymap.set("n", "<c-g>", telescope.builtin.git_status)
vim.keymap.set("n", "<c-p>", telescope.builtin.find_files)

vim.diagnostic.config({ virtual_text = false})
vim.keymap.set("n", "<c-j>", vim.diagnostic.goto_next)
vim.keymap.set("n", "<c-k>", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)

vim.keymap.set("n", "[g", ":GitGutterPrevHunk<CR>", { silent = true })
vim.keymap.set("n", "]g", ":GitGutterNextHunk<CR>", { silent = true })
vim.keymap.set("n", "ghp", ":GitGutterPreviewHunk<CR>", { silent = true })
vim.keymap.set("n", "ghs", ":GitGutterStageHunk<CR>", { silent = true })

vim.g.gitgutter_preview_win_floating = 0
