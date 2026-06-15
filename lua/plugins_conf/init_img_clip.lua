return {
  "HakonHarnes/img-clip.nvim",
  event = "VeryLazy",
  opts = {
    -- add options here
    -- or leave it empty to use the default settings
  },
  keys = {
    -- suggested keymap
    { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
  },
  config = function()
      require('img-clip').setup {
        default = {
            dir_path = function() 
                local current_dir = vim.fn.fnamemodify(vim.fn.expand("%:p"), ":h")
                return current_dir .. "/imgs"
            end,
            insert_mode_after_paste = false,
        },
        file_types = {
            markdown = {
                  url_encode_path = true, ---@type boolean | fun(): boolean
                  template = "![$CURSOR]($FILE_PATH)", ---@type string | fun(context: table): string
                  download_images = false, ---@type boolean | fun(): boolean
                },
            tex = {
                relative_template_path = false, ---@type boolean | fun(): boolean
                template = [[
                            \begin{figure}[H]
                              \centering
                              \includegraphics[\textwidth]{$FILE_PATH}
                              \caption{$CURSOR}
                              \label{fig:$LABEL}
                            \end{figure}
                                ]], ---@type string | fun(context: table): string
                                },
        },
      }
  end 
}

