-- Основное
vim.g.mapleader = " "              -- «лидер»: пробел, префикс для своих сочетаний
vim.opt.number = true              -- номера строк
vim.opt.relativenumber = true      -- относительные номера (удобно для 5j, 3dd)
vim.opt.cursorline = true          -- подсветка строки с курсором
vim.opt.scrolloff = 8              -- не прижимать курсор к краю экрана
vim.opt.mouse = "a"                -- мышь работает
vim.opt.clipboard = "unnamedplus"  -- общий буфер обмена с системой (wl-clipboard)
vim.opt.undofile = true            -- история отмен сохраняется между запусками

-- Отступы: 4 пробела
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Поиск
vim.opt.ignorecase = true          -- без учёта регистра...
vim.opt.smartcase = true           -- ...если в запросе нет заглавных букв

-- Цвета: фон берём от терминала (наша палитра в foot)
-- Цвета: своя схема из палитры (colors/t480.lua)
vim.opt.termguicolors = true
vim.cmd.colorscheme("t480")

-- Свои сочетания
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Сохранить" })
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "Выйти" })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Убрать подсветку поиска" })
