-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  {
    import = "astrocommunity.color.transparent-nvim",
    -- enabled = true ,
    extra_groups = {
      "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
      "NvimTreeNormal", -- NvimTree
    },
  },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.rust" },
}
