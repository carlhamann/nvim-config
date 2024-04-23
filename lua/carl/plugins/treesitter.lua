local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
    require "nvim-treesitter.configs".setup {
        ensure_installed = { "c", "cpp", "lua", "cmake", "vim", "bash" },
        sync_install = true,
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
        }
      }
    }
end

return M
