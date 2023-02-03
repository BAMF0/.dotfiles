require('nightfox').setup({
    options = {
        transparent = true,
        terminal_colors = true,
    }
})

function ColorMyPencils(color)
    color = color or "nordfox"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
