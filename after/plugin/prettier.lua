local status, prettier = pcall(require, "prettier")
if (not status) then
    print('prettier is not installed')
    return
end

prettier.setup({
    bin = 'prettierd',
    filetypes = {
        "css",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "less",
        "markdown",
        "scss",
        "typescript",
        "typescriptreact",
        "yaml",
    },
    -- TODO: this doesn't work with prettierd
    -- cli_options = {
    --     config_precedence = "prefer-file",
    --     single_quote = true,
    -- }
})
