require("codecompanion").setup({
  adapters = {
    openrouter = function()
      return require("codecompanion.adapters").extend("openai", {
        name = "openrouter",
        url = "https://openrouter.ai/api/v1/chat/completions",
        env = {
          api_key = os.getenv("OPENROUTER_API_KEY"),
        },
        headers = {
          ["HTTP-Referer"] = "https://neovim.org",
        },
        schema = {
          model = {
            default = "x-ai/grok-4-fast:free",
          },
          max_tokens = {
            default = 2000,
          },
        },
      })
    end,
  },
  strategies = {
    chat = {
      adapter = "openrouter",
      model = "x-ai/grok-4-fast:free",
    },
    inline = {
      adapter = "openrouter",
      model = "x-ai/grok-4-fast:free",
    },
    cmd = {
      adapter = "openrouter",
      model = "x-ai/grok-4-fast:free",
    },
  },
  opts = {
    log_level = "DEBUG",
  },
})
