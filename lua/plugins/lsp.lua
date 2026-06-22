return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      vim.lsp.enable('lua_ls')
      vim.lsp.config('clangd', {
        cmd = { "clangd",
          "--fallback-style=webkit",
          "--query-driver=**/*-gcc,**/*-g++"
        }
      })
      vim.lsp.enable('clangd')
      vim.lsp.enable('bashls')


      vim.keymap.set({ "n", "v" }, "<leader>f", function() vim.lsp.buf.format() end)
    end,
  }
}
