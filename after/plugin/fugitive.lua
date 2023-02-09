local function showFugitive()
    vim.cmd [[
        vertical Git
        wincmd L
        vertical resize 50
        setlocal winfixwidth
    ]]
end

-- TODO: make this a toggle
local function fugitiveStatus()
    if vim.fn.buflisted(vim.fn.bufname('fugitive:///*/.git//$')) ~= 0 then
        vim.cmd [[ execute ":bdelete" bufname('fugitive:///*/.git//$') ]]
    else
        showFugitive()
    end
end

vim.keymap.set("n", "<leader>gs", fugitiveStatus);
