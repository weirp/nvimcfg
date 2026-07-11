-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.lsp.enable("effect")

-- Configure the diagnostic floating window behavior globally
vim.diagnostic.config({
  float = {
    wrap = true, -- Enable line wrapping inside the floating window
    border = "rounded", -- Adds a nice visual border around the popup
  },
})

-- Map a key (e.g., <leader>e) to open the wrapped floating window
vim.keymap.set("n", "<leader>i", vim.diagnostic.open_float, { desc = "Show wrapped line diagnostics" })
