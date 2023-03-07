--require("transparent").setup({
--  enable = true, -- boolean: enable transparent
--})

function ColorMyPencils(color)
    color = color or "kanagawa"
    vim.cmd.colorscheme(color)
    --vim.cmd.set("background=light")
end
ColorMyPencils()
