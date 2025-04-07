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
