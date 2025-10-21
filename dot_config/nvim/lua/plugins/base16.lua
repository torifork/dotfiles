return {
  "tinted-theming/tinted-nvim",
  config = function()
    require('tinted-colorscheme').setup('base16-gruvbox-material-dark-hard', {
      supports = {
	tinty = false,
	live_reload = false,
      }
    })
    vim.cmd.colorscheme('base16-gruvbox-material-dark-hard')
  end,
}
