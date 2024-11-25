local customPluginT = {}
function customPluginT.setupCustomPlugins()
  -- LSP SIGNATURE --
  local cfg = {
    bind = true,
    transparency = 70,
  }
  require('lsp_signature').setup(cfg)
end
customPluginT.lazy = {
  {
    'ray-x/lsp_signature.nvim',
    event = 'InsertEnter',
    opts = {
      bind = true,
      handler_opts = {
        border = 'rounded',
      },
    },
    config = function(_, opts)
      require('lsp_signature').setup(opts)
    end,
  },
}

return customPluginT
