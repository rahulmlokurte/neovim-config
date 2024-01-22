return
  {
    { "rose-pine/neovim",
      priority = 1000,
      lazy = false,
      name = 'rose-pine',
      config = function ()
        require("rose-pine").setup({
          styles = {
            transparency = true,
          },
          highlight_groups = {
            TelescopeBorder = { fg = "highlight_high", bg = "none" },
            TelescopeNormal = { bg = "none" },
            TelescopePromptNormal = { bg = "base" },
            TelescopeResultsNormal = { fg = "subtle", bg = "none" },
            TelescopeSelection = { fg = "text", bg = "base" },
            TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
          },
        })
        vim.o.background = "dark"
        vim.cmd([[colorscheme rose-pine]])
      end
    }
  }
