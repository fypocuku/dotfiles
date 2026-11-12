-- Цветовая схема t480: палитра из обоев wallhaven-jel9mw
vim.cmd("highlight clear")
vim.g.colors_name = "t480"

local c = {
    bg       = "#0d0a16",
    bg_alt   = "#191a29",
    surface  = "#2d2146",
    muted    = "#605581",
    fg       = "#dadefc",
    accent   = "#7079e0",
    lavender = "#a79bcd",
    pink     = "#f2b8f0",
    cyan     = "#bbf0fe",
    urgent   = "#e0789a",
    mint     = "#8fd3c0",
    peach    = "#f0d7a8",
}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

-- Интерфейс
hl("Normal",       { fg = c.fg, bg = "none" })   -- фон от терминала
hl("NormalNC",     { fg = c.fg, bg = "none" })
hl("NormalFloat",  { fg = c.fg, bg = c.bg_alt })  -- всплывающие окна
hl("FloatBorder",  { fg = c.accent, bg = c.bg_alt })
hl("LineNr",       { fg = c.muted })
hl("CursorLine",   { bg = c.bg_alt })
hl("CursorLineNr", { fg = c.accent, bold = true })
hl("SignColumn",   { bg = "none" })
hl("Visual",       { bg = c.surface })
hl("Search",       { fg = c.bg, bg = c.pink })
hl("IncSearch",    { fg = c.bg, bg = c.accent })
hl("CurSearch",    { link = "IncSearch" })
hl("MatchParen",   { fg = c.pink, bold = true })
hl("StatusLine",   { fg = c.fg, bg = c.bg_alt })
hl("StatusLineNC", { fg = c.muted, bg = c.bg_alt })
hl("WinSeparator", { fg = c.surface })
hl("Pmenu",        { fg = c.fg, bg = c.bg_alt })
hl("PmenuSel",     { fg = c.bg, bg = c.accent })
hl("NonText",      { fg = c.surface })
hl("EndOfBuffer",  { fg = c.surface })
hl("Title",        { fg = c.pink, bold = true })
hl("Directory",    { fg = c.accent })
hl("ErrorMsg",     { fg = c.urgent })
hl("WarningMsg",   { fg = c.peach })
hl("ModeMsg",      { fg = c.lavender })

-- Синтаксис
hl("Comment",    { fg = c.muted, italic = true })
hl("Constant",   { fg = c.pink })
hl("String",     { fg = c.mint })
hl("Character",  { fg = c.mint })
hl("Number",     { fg = c.peach })
hl("Boolean",    { fg = c.peach })
hl("Identifier", { fg = c.fg })
hl("Function",   { fg = c.accent })
hl("Statement",  { fg = c.lavender })
hl("Keyword",    { fg = c.lavender })
hl("Operator",   { fg = c.cyan })
hl("PreProc",    { fg = c.cyan })
hl("Type",       { fg = c.cyan })
hl("Special",    { fg = c.pink })
hl("Delimiter",  { fg = c.muted })
hl("Todo",       { fg = c.bg, bg = c.pink, bold = true })
hl("Error",      { fg = c.urgent })

-- Ошибки и подсказки
hl("DiagnosticError", { fg = c.urgent })
hl("DiagnosticWarn",  { fg = c.peach })
hl("DiagnosticInfo",  { fg = c.cyan })
hl("DiagnosticHint",  { fg = c.lavender })
hl("DiagnosticOk",    { fg = c.mint })

-- Изменения (git)
hl("Added",   { fg = c.mint })
hl("Removed", { fg = c.urgent })
hl("Changed", { fg = c.peach })
