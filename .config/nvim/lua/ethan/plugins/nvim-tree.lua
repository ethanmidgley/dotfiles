local setup, tree = pcall(require, "nvim-tree")
if not setup then
  return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

tree.setup({
  actions = {
    open_file = {
      window_picker = {
        enable = false
      }
    }
  }
})
