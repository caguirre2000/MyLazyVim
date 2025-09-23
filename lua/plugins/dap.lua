return {
  "mfussenegger/nvim-dap",
  opts = function(_, opts)
    local dap = require("dap")

    dap.configurations.java = dap.configurations.java or {}
    table.insert(dap.configurations.java, {
      type = "java",
      request = "attach",
      name = "Debug Spring Boot",
      hostName = "127.0.0.1",
      port = 8000,
    })
  end,
}
