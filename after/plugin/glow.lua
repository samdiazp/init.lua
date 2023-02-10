local status, glow = pcall(require, 'glow')
if (not status) then
    print('glow not installed')
    return
end

glow.setup()
