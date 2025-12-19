-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      ensure_installed = {
        -- install language servers
        "bash-language-server",
        "clangd",
        "json-lsp",
        "ltex-ls-plus",
        "lua-language-server",
        "pyright",
        "python-lsp-server",
        "ruff",
        "rust-analyzer",
        "texlab",

        -- install formatters/former null-ls sources
        "bash-debug-adapter",
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

        -- debuggers
        "codelldb",
        "debugpy",
      },
    },
  },
}
