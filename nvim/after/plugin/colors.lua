-- require("transparent").setup({
-- enable = true, -- boolean: enable transparent
-- })

function ColorMyPencils(color)
    color = color or "zenbones"
    vim.cmd.colorscheme(color)
    vim.cmd.set("background=light")
end
ColorMyPencils()
