return {
  "mrcjkb/rustaceanvim",
  dependencies = {
    "AstroNvim/astrocore",
    opts = {
      autocmds = {
        rustaceanvim_mapping_descriptions = {
          {
            event = "FileType",
            desc = "Set up Rustacean Which-Key descriptions",
            pattern = "rust",
            callback = function(event)
              local wk_avail, wk = pcall(require, "which-key")
              if not wk_avail then return end
              wk.add {
                buffer = event.buf,
                {
                  mode = "n",
                  { "<leader>r", group = "🦀 Rust" },
                  {
                    "<leader>rd",
                    function() vim.cmd.RustLsp { "debug" } end,
                    desc = "Debug current function",
                  },
                  {
                    "<leader>rD",
                    function() vim.cmd.RustLsp { "debuggables" } end,
                    desc = "Debug from targets",
                  },
                  {
                    "<leader>rr",
                    function() vim.cmd.RustLsp { "run" } end,
                    desc = "Run current function",
                  },
                  {
                    "<leader>rR",
                    function() vim.cmd.RustLsp { "runnables" } end,
                    desc = "Run from targets",
                  },
                  {
                    "<leader>rK",
                    function() vim.cmd.RustLsp { "openDocs" } end,
                    desc = "doc.rs of symbol",
                  },
                  {
                    "<leader>rP",
                    function() vim.cmd.RustLsp { "parentModule" } end,
                    desc = "Jump to parent mod",
                  },
                },
              }
            end,
          },
        },
      },
    },
  },
}
