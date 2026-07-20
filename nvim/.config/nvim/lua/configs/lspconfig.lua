require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "basedpyright",
  "ty",
  "clangd",
  "rust_analyzer",
  "docker_composer_langserver",
  "docker_language_server",
  "hydra_lsp",
  "wasm_language_tools",
  "just",
  "lua_ls",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
