local status, blankline = pcall(require, 'indent_blankline')
if (not status) then return end

blankline.setup {
    use_treesitter = true,
    use_treesitter_scope = true,
    show_current_context = true,
    show_current_context_start = true,
}
