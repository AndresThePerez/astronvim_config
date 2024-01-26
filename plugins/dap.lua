return {
  "mfussenegger/nvim-dap",
  enabled = true,
  dependencies = {
    -- { "theHamsta/nvim-dap-virtual-text", config = true },
  },
  config = function()
    local dap = require "dap"
    dap.adapters.php = {
      type = "executable",
      command = "nodejs",
      args = { "~/vscode-php-debug/out/phpDebug.js" },
    }

    dap.configurations.php = {
      {
        type = "php",
        request = "launch",
        name = "Listen for xdebug",
        port = "9003",
        pathMappings = {
          ["/var/www/html"] = "${workspaceFolder}",
        },
        hostname = "localhost"
      },
    }
  end,
}
