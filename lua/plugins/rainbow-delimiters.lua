return {
  "hiphish/rainbow-delimiters.nvim",
  event = { "BufReadPost", "BufNewFile" },

  config = function()
    local rainbow_delimiters = require("rainbow-delimiters")

    -- Define highlight groups using Dracula colors
    vim.api.nvim_set_hl(0, "RainbowDelimiterCyan",   { fg = "#8BE9FD" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterGreen",  { fg = "#50FA7B" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = "#F1FA8C" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = "#FFB86C" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterPink",   { fg = "#FF79C6" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterPurple", { fg = "#BD93F9" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterRed",    { fg = "#FF5555" })

    -- Configure rainbow-delimiters
    vim.g.rainbow_delimiters = {
      strategy = {
        [""] = rainbow_delimiters.strategy["global"],
        lua = rainbow_delimiters.strategy["local"],
        c = rainbow_delimiters.strategy["local"],
        cpp = rainbow_delimiters.strategy["local"],
        go = rainbow_delimiters.strategy["local"],
      },
      query = {
        [""] = "rainbow-delimiters",
        lua = "rainbow-blocks",
      },
      highlight = {
        "RainbowDelimiterCyan",
        "RainbowDelimiterGreen",
        "RainbowDelimiterYellow",
        "RainbowDelimiterOrange",
        "RainbowDelimiterPink",
        "RainbowDelimiterPurple",
        "RainbowDelimiterRed",
      },
    }
  end,
}
