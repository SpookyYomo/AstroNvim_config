local function resolvePythonPath()
  if vim.env.PYENV_VERSION == nil then
    return "~/.local/share/pyenv/shims/python"
  else
    local full_ver = vim.env.PYENV_VERSION
    local major_ver = string.sub(full_ver, 1, string.find(full_ver, "%.", string.find(full_ver, "%.") + 1) - 1)
    return vim.env.HOME .. "/.local/share/pyenv/versions/" .. full_ver .. "/bin/python" .. major_ver
  end
end

return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require "dap"
    dap.adapters.python = {
      type = "executable",
      command = resolvePythonPath(),
      args = { "-m", "debugpy.adapter" },
    }

    dap.configurations.python = {
      {
        -- The first three options are required by nvim-dap
        type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
        request = "launch",
        name = "Launch file",

        -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

        program = "${file}", -- This configuration will launch the current file if used.
        pythonPath = resolvePythonPath(),
        justMyCode = false,
      },
    }
  end,
}
