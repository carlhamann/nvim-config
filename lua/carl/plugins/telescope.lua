local M = {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
      'nvim-lua/plenary.nvim',
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      'nvim-tree/nvim-web-devicons'
    },
    config = function()
      local actions = require("telescope.actions")
      local telescope = require("telescope")
      require("telescope").setup({
          defaults = {
            path_display = { "smart" },
            mappings = {
                i = {
                  ["<C-k>"] = actions.move_selection_previous,
                  ["<C-j>"] = actions.move_selection_next,
                  ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                },
            },
          },
      })

    telescope.load_extension("fzf")

    -- keymaps
    local keymap = vim.keymap
    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in CWD" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find files recent files" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in CWD" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in CWD" })
  end,
}

return M
