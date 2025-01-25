-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "bashls", -- bash-language-server
        "clangd",
        "jsonls", -- json-lsp
        "ltex", -- ltex-ls
        "lua_ls",
        "pyright",
        "pylsp", -- python-lsp-server,
        "ruff",
        "rust_analyzer", -- rust-analyzer
        "texlab",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "bash-debug-adapter",
        -- "prettier",
        "codespell",
        "debugpy",
        "gitlint",
        "gitui",
        "latexindent",
        "pydocstyle",
        "ruff",
        "selene",
        "stylua",
        "tree-sitter-cli",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "codelldb",
        "python",
      },
    },
  },
}
