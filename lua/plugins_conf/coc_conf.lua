-- ~/.config/nvim/lua/plugins.lua
return {
  {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
      -- 启用 coc.nvim 扩展
      vim.g.coc_global_extensions = {
        'coc-tsserver',
        'coc-json',
        'coc-html',
        'coc-css',
        'coc-python',
        'coc-rust-analyzer',
        'coc-go',
        'coc-java',
        'coc-clangd',
        'coc-eslint',
        'coc-prettier',
        'coc-snippets',
        'coc-yaml',
        'coc-vimlsp',
        'coc-sh',
        'coc-docker',
        'coc-markdownlint',
        'coc-highlight',
        'coc-explorer',
        'coc-git',
        'coc-lists',
        'coc-marketplace',
        'coc-pairs',
        'coc-spell-checker',
        'coc-tabnine',
        'coc-tslint-plugin',
        'coc-vetur',
        'coc-xml',
        'coc-yank',
        'coc-vetur',
      }

      -- 使用 <Tab> 进行补全
      vim.api.nvim_set_keymap('i', '<TAB>', 'pumvisible() ? "<C-n>" : "<TAB>"', { expr = true, noremap = true })
      vim.api.nvim_set_keymap('i', '<S-TAB>', 'pumvisible() ? "<C-p>" : "<C-h>"', { expr = true, noremap = true })

      -- 使用 <CR> 确认补全
      vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "<C-g>u<CR>"', { expr = true, noremap = true })

      -- 跳转到定义
      vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', { noremap = true, silent = true })

      -- 跳转到类型定义
      vim.api.nvim_set_keymap('n', 'gy', '<Plug>(coc-type-definition)', { noremap = true, silent = true })

      -- 跳转到实现
      vim.api.nvim_set_keymap('n', 'gi', '<Plug>(coc-implementation)', { noremap = true, silent = true })

      -- 跳转到引用
      vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', { noremap = true, silent = true })

      -- 返回上一个位置
      vim.api.nvim_set_keymap('n', 'gb', '<C-o>', { noremap = true, silent = true })

      -- 显示文档
      vim.api.nvim_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

      -- 重命名符号
      vim.api.nvim_set_keymap('n', '<leader>rn', '<Plug>(coc-rename)', { noremap = true, silent = true })

      -- 格式化代码
      vim.api.nvim_set_keymap('n', '<leader>f', '<Plug>(coc-format)', { noremap = true, silent = true })

      -- 诊断跳转
      vim.api.nvim_set_keymap('n', '[d', '<Plug>(coc-diagnostic-prev)', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', ']d', '<Plug>(coc-diagnostic-next)', { noremap = true, silent = true })

      -- 自定义函数：显示文档
      local function show_documentation()
        local filetype = vim.bo.filetype
        if vim.tbl_contains({ 'vim', 'help' }, filetype) then
          vim.cmd('h ' .. vim.fn.expand('<cword>'))
        else
          vim.lsp.buf.hover()
        end
      end

      vim.api.nvim_set_keymap('n', 'K', ':lua show_documentation()<CR>', { noremap = true, silent = true })
    end,
  },
  -- 其他插件...
}


-- return {
--     {
--         "neoclide/coc.nvim",
--         brach = "release",
--         config = function() 
--             -- nothing
--         end
--     },
-- }
