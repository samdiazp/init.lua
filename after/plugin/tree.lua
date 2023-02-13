local status, tree = pcall(require, "nvim-tree")
if (not status) then
    print("nvim-tree is not installed")
    return
end

tree.setup {
    disable_netrw = true,
    hijack_netrw = true,
    hijack_cursor = true,
    view = {
        side = 'left',
        number = true,
        relativenumber = true,
        width = 40,
        hide_root_folder = true,
    },
    renderer = {
        indent_width = 1,
    },
    filters = {
        dotfiles = false,
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
    },
    modified = {
        enable = true,
    }
}

vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeFindFile)
vim.keymap.set("n", "<leader>pb", vim.cmd.NvimTreeFindFileToggle)
