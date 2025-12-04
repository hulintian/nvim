return {
    {
      "nvim-neorg/neorg",
      build = ":Neorg sync-parsers",
      dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
      config = function()
        require("neorg").setup {
          load = {
            ["core.defaults"] = {},
            ["core.concealer"] = {},        -- 美化符号
            ["core.dirman"] = {             -- 管理笔记工作区
              config = {
                workspaces = {
                  notes   = "~/notes",
                  journal = "~/notes/journal",
                },
                default_workspace = "notes",
              },
            },
            -- ["core.tasks"] = {},             -- TODO 系统
            ["core.itero"] = {},          -- Agenda 汇总视图
            ["core.ui.calendar"] = {},
            ["core.journal"] = {            -- 每日/周期笔记
              config = { workspace = "journal", strategy = "flat" },
            },
            ["core.export"] = {},           -- 导出 Markdown/HTML
          },
        }
      end
    }
}

