M = {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function ()
    vim.o.timeout = true 
    vim.o.timeoutlen = 1500 -- dont mess up my screen immediately
  end,
  opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
}

return M
