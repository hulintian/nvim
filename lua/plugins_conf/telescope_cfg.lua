return {
    {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.6",
      dependencies = {
        "nvim-lua/plenary.nvim"
      },
      config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files, {})  -- 查文件
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})   -- 全局搜索字符串
        vim.keymap.set("n", "<leader>fb", builtin.buffers, {})     -- 缓冲区
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})   -- 帮助
      end
    }
}
