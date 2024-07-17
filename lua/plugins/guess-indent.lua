return {
  "nmac427/guess-indent.nvim",
  config = function()
    require("guess-indent").setup({
      -- Default command not working, override in options.lua
      auto_cmd = false,
    })
  end,
}
