return {
  {
    "folke/tokyonight.nvim", -- Instala el tema Tokyonight
    lazy = false, -- Se carga inmediatamente al iniciar Neovim
    priority = 1000, -- Asegura que se carga antes que otros temas
    config = function()
      require("tokyonight").setup({
        transparent = true, -- Fondo transparente
        style = "night", -- Opciones: "storm", "night", "moon"
      })
      vim.cmd("colorscheme tokyonight") -- Aplicar el tema
    end,
  },
}
