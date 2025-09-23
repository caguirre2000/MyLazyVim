-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Cargar el módulo personalizado
vim.keymap.set("n", "<leader>rs", function()
  -- Cargar toggleterm solo cuando se necesite
  local ok, toggleterm = pcall(require, "toggleterm")
  if not ok then
    vim.notify("❌ toggleterm no está disponible", vim.log.levels.ERROR)
    return
  end

  -- Verificar que estamos en un proyecto Maven
  local maven_files = vim.fn.glob("pom.xml")
  if maven_files == "" then
    vim.notify("❌ No se encontró pom.xml en el directorio actual", vim.log.levels.ERROR)
    return
  end

  -- Cargar variables de entorno desde el shell actual
  local handle = io.popen("bash -c 'echo $SONAR_TOKEN'")
  local sonar_token = handle:read("*a"):gsub("%s+", "")
  handle:close()

  if not sonar_token or sonar_token == "" then
    vim.notify("❌ La variable SONAR_TOKEN no está definida", vim.log.levels.ERROR)
    vim.notify("💡 Ejecuta: export SONAR_TOKEN='tu_token' en tu terminal", vim.log.levels.INFO)
    return
  end

  local cmd = "mvn clean verify sonar:sonar -Dsonar.host.url=http://localhost:9000 -Dsonar.login=" .. sonar_token
  toggleterm.exec(cmd, 1, 20, nil, "float")

  vim.notify("🚀 Ejecutando análisis SonarQube...", vim.log.levels.INFO)
end, {
  desc = "Run Sonar analysis",
})
