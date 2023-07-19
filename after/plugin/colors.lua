DefaultTheme = "onedark"
LualineDefaultTheme = "onedark"

function SetColorScheme(color)
    color = color or DefaultTheme
    vim.cmd.colorscheme(color)

end

