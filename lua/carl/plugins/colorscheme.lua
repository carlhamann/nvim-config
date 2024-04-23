local M = {
    "folke/tokyonight.nvim",
    lazy = false, -- Loads this plugin at the beginning
    priority = 1000, 
    config = function ()
      vim.cmd("colorscheme tokyonight") 
    end
}

return M
