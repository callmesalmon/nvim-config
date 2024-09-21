-- == Colorschemes ==
-- File for colorschemes,
-- add them here.

return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
    },
  }
