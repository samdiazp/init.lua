local status, telescope = pcall(require, 'telescope')
if (not status) then
    print('telescope is not installed')
    return
end

local status, builtin = pcall(require, 'telescope.builtin')
if (not status) then
    return
end

telescope.setup({
    defaults = {
        layout_config = {
            prompt_position = 'top',
        },
        prompt_prefix = '  ',
        sorting_strategy = 'ascending',
    },
    pickers = {
        find_files = {
            find_command = { 'rg', '--files', '--hidden', '-g', '!.git' },
        },
        live_grep = {
            additional_args = function()
                return { "--hidden", '-g', '!.git' }
            end
        },
        git_status = {
            git_icons = {
                added = "A",
                changed = "M",
                copied = "C",
                deleted = "D",
                renamed = "R",
                unmerged = "U",
                untracked = "?",
            },
        }
    }
})

vim.keymap.set('n', ';f', builtin.find_files, {})
vim.keymap.set('n', ';e', builtin.live_grep, {})
vim.keymap.set('n', ';b', builtin.buffers, {})
vim.keymap.set('n', '<leader>td', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>tc', builtin.commands, {})
vim.keymap.set('n', '<leader>tr', builtin.resume, {})

vim.keymap.set('n', ';g', builtin.git_files, {})
vim.keymap.set('n', '<leader>tgc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>tgb', builtin.git_bcommits, {})
vim.keymap.set('n', '<leader>tgs', builtin.git_status, {})
