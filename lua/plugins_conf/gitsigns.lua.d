require("gitsigns").setup({
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns
    vim.keymap.set("n", "]c", gs.next_hunk, { buffer = bufnr })
    vim.keymap.set("n", "[c", gs.prev_hunk, { buffer = bufnr })
    vim.keymap.set("n", "<leader>hp", gs.preview_hunk, { buffer = bufnr })
  end,
})
