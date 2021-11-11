if !exists('g:loaded_nvim_treesitter')
  echo 'Not loaded TreeSitter'
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    'bash',
    'hcl',
    'fish',
    'dockerfile',
    'json',
    'yaml',
    'javascript',
    'html',
    'scss'
  },
}

local parser_config = require 'nvim-treesitter.parsers'.get_parser_configs()
parser_config.tsx.used_by = { 'javascript', 'typescript.tsx' }

EOF

