--[[require('tokyonight').setup({
    transparent = true,
    terminal_colors = true,
    lualine_bold = true,
})--]]

function ColorMyPencils(color)
	color = color or "melange"
	vim.cmd.colorscheme(color)
	
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
