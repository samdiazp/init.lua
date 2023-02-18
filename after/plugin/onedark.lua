local status, onedark = pcall(require, 'onedark')
if (not status) then
    print('onedark is not installed')
    return
end

onedark.setup({
    style = 'deep',
    transparent = true,
})

-- need to call set color scheme here because it was not working
SetColorScheme()
