return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      on_attach = function(bufnr)
        local api = require("nvim-tree.api")

        -- 1. Load NvChad's default nvim-tree mappings first
        api.config.mappings.default_on_attach(bufnr)

        -- 2. Add your custom VSCode-style C-n mapping
        vim.keymap.set("n", "<C-n>", api.fs.create, {
          buffer = bufnr,
          noremap = true,
          silent = true,
          desc = "Create file in folder of current node",
        })
      end,
    },
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
