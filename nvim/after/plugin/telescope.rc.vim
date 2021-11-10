if !exists('g:loaded_telescope') | finish | endif

nnoremap  <silent> <Leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <silent> <Leader>r <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap  <silent> <Leader>b <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
EOF

