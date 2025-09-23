return {
  "nvim-neotest/neotest",
  dependencies = {
    "rcasia/neotest-java",
  },
  opts = function(_, opts)
    table.insert(
      opts.adapters,
      require("neotest-java")({
        -- Configuración específica para encontrar tests
        ignore_wrapper = false, -- usar gradle/maven wrapper si existe
        junit_jar = nil, -- dejar que encuentre JUnit automáticamente
        -- Patrones para encontrar archivos de test
        test_patterns = {
          ".*Test%.java$",
          ".*Tests%.java$",
        },
      })
    )
  end,
}
