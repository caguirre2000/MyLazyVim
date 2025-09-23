-- return {
--   {
--     "mfussenegger/nvim-jdtls",
--     opts = {
--       settings = {
--         java = {
--           format = {
--             settings = {
--               profile = "Criss",
--               url = "file:///home/criss/formatter_test.xml",
--             },
--             enabled = false,
--           },
--         },
--       },
--     },
--     -- config = function(_, opts)
--     --     		require("jdtls").start_or_attach(opts)  -- Inicia jdtls con la configuración
--     -- end,
--   },
-- }

return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      java = { "google-java-format" },
      fish = { "fish indent" },
      lua = { "stylua" },
      sh = { "shfmt" },
    },
  },
}
