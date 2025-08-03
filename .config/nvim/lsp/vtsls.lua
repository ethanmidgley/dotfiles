local mason_path = vim.fn.stdpath("data") .. "/mason/packages/"
local vue_typescript_plugin = mason_path
  .. "vue-language-server/node_modules/@vue/language-server/node_modules/@vue/typescript-plugin"

local vue_plugin = {
  name = "@vue/typescript-plugin",
  location = vue_typescript_plugin,
  languages = { "vue" },
  configNamespace = "typescript",
}

return {
  cmd = { "vtsls", "--stdio" },
  settings = {
    vtsls = {
      tsserver = {
        globalPlugins = {
          vue_plugin,
        },
      },
    },
  },
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "vue",
  },
  root_markers = { "tsconfig.json", "package.json", "jsconfig.json", ".git" },
}
