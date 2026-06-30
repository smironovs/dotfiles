local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "ts_ls",
    "html",
    "cssls",
    "jsonls",
    "tailwindcss",
    "eslint",
    "intelephense",
  },
})

vim.lsp.config("lua_ls", {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        checkThirdParty = false,
      },
    },
  },
})

vim.lsp.config("ts_ls", {
  capabilities = capabilities,
})

vim.lsp.config("html", {
  capabilities = capabilities,
})

vim.lsp.config("cssls", {
  capabilities = capabilities,
})

vim.lsp.config("jsonls", {
  capabilities = capabilities,
})

vim.lsp.config("tailwindcss", {
  capabilities = capabilities,
})

vim.lsp.config("eslint", {
  capabilities = capabilities,
})

vim.lsp.config("intelephense", {
  capabilities = capabilities,
  settings = {
    intelephense = {
      telemetry = {
        enabled = false,
      },
      files = {
        maxSize = 5000000,
      },
    },
  },
})

vim.lsp.enable({
  "lua_ls",
  "ts_ls",
  "html",
  "cssls",
  "jsonls",
  "tailwindcss",
  "eslint",
  "intelephense",
})

vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
  desc = "Go to definition",
})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {
  desc = "Hover documentation",
})

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {
  desc = "Rename symbol",
})

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {
  desc = "Code action",
})

vim.keymap.set("n", "gr", vim.lsp.buf.references, {
  desc = "References",
})

vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, {
  desc = "Show diagnostic",
})
