return {
  "sindrets/winshift.nvim",
  config = function ()
    local winshift = require("winshift")
    winshift.setup()

    local keymap = vim.keymap
    keymap.set("n", "<C-e>", "<Cmd>WinShift<CR>", { desc = "Start WinSift mode"})
  end
}
