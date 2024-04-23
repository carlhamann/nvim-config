return {
  'rmagatti/auto-session',
  config = function ()
    require("auto-session").setup({
      auto_restore_enabled = false,
    })

    local keymap = vim.keymap
    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for CWD" })
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for current CWD" })

  end
}
