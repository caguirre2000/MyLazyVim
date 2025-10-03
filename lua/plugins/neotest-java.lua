return {
  "nvim-neotest/neotest",
  dependencies = {
    "rcasia/neotest-java",
  },
  opts = function(_, opts)
    table.insert(
      opts.adapters,
      require("neotest-java")({
        ignore_wrapper = false,
        junit_jar = nil,
        test_patterns = {
          ".*Test%.java$",
          ".*Tests%.java$",
        },
      })
    )
  end,
}
