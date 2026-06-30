return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        php = { "php_cs_fixer" },

        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        vue = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
        markdown = { "prettier" },
      },
    })
  end,
}
