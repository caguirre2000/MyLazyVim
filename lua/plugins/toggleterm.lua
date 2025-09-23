return {
  -- Tus otros plugins aquí...

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
    opts = {
      open_mapping = false, -- Desactivar el atajo por defecto
      direction = "float",
      float_opts = {
        border = "rounded",
        width = 100,
        height = 30,
      },
    },
  },
}
