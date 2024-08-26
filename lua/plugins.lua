local lazypath = vim.fn.stdpath("data") .. "/site/pack/lazy/start/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    "rebelot/kanagawa.nvim",

    { "kyazdani42/nvim-tree.lua", event = "VimEnter", dependencies = "nvim-tree/nvim-web-devicons" },

})
