-- == Plugins ==
-- Kindly add your plugins here
-- using lazy.nvim.

return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  -- Add more plugins here...
}
