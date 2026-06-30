local map = vim.keymap.set

map("n", "<leader>w", "<cmd>write<cr>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit" })

map("n", "<esc>", "<cmd>nohlsearch<cr>", {
  desc = "Clear search highlight",
})

map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", {
  desc = "Toggle file tree",
})

map("n", "<leader>bn", "<cmd>BufferLineCycleNext<cr>", {
  desc = "Next buffer",
})
map("n", "<leader>bp", "<cmd>BufferLineCyclePrev<cr>", {
  desc = "Previous buffer",
})
map("n", "<leader>bd", "<cmd>bdelete<cr>", {
  desc = "Delete buffer",
})

map("n", "<leader>tt", "<cmd>ToggleTerm<cr>", {
  desc = "Toggle terminal",
})
map("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", {
  desc = "Floating terminal",
})
