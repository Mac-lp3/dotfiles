if !exists('g:lspconfig')
  finish
endif

lua << EOF

-- vim.lsp.set_log_level('debug')

local coq = require'coq'
local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'
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

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" }
}
nvim_lsp.tsserver.setup(coq.lsp_ensure_capabilities())

nvim_lsp.terraformls.setup {
  on_attach = on_attach
}
nvim_lsp.terraformls.setup(coq.lsp_ensure_capabilities())

EOF


