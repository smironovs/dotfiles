return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local ok, configs = pcall(require, "nvim-treesitter.configs")
    if not ok then
      return
    end

    configs.setup({
      ensure_installed = {
        "lua",
        "php",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "vue",
        "json",
        "bash",
        "markdown",
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    })
  end,
}
