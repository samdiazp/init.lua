DefaultTheme = "gruvbox"
LualineDefaultTheme = "gruvbox"

function SetColorScheme(color)
    color = color or DefaultTheme
    vim.cmd.colorscheme(color)

end

