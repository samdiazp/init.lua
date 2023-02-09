function ColorMyPencils(color)
    color = color or "spacecamp"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none", fg = "LightBlue" })
    vim.api.nvim_set_hl(0, "WhiteSpace", { bg = "none", fg = "#3f3f3f" })
    vim.api.nvim_set_hl(0, "NonText", { bg = "none", fg = "#3f3f3f" })
end

ColorMyPencils()
