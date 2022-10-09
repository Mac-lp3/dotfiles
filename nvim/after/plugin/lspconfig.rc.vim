if !exists('g:lspconfig')
  finish
endif

lua << EOF

vim.lsp.set_log_level('debug')

local coq = require('coq')
local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  protocol.CompletionItemKind = {
    '', -- Text
    '', -- Method
    '', -- Function
    '', -- Constructor
    '', -- Field
    '', -- Variable
    '', -- Class
    'ﰮ', -- Interface
    '', -- Module
    '', -- Property
    '', -- Unit
    '', -- Value
    '', -- Enum
    '', -- Keyword
    '﬌', -- Snippet
    '', -- Color
    '', -- File
    '', -- Reference
    '', -- Folder
    '', -- EnumMember
    '', -- Constant
    '', -- Struct
    '', -- Event
    'ﬦ', -- Operator
    '', -- TypeParameter
  }
end

local servers = { 'terraformls', 'bashls', 'pyright', 'tsserver', 'vimls', 'sumneko_lua' }
for _, lsp in ipairs(servers) do
  if lsp == 'sumneko_lua' then
    -- assumes the lua start script is on the path. you may need to put a wrapper there.
    nvim_lsp[lsp].setup(
      coq.lsp_ensure_capabilities({
        on_attach = on_attach,
        cmd = { 'lua-language-server' }
      })
    )
  else
    nvim_lsp[lsp].setup(coq.lsp_ensure_capabilities({
      on_attach = on_attach,
    }))
  end
end

EOF

