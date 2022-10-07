
For WSL clip board spupport, you also need to install win32yank.

See: https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl

## TODO

* tmux session to open vim config in new window
* ctrl + shift + direction to scroll the screen 
* themes?
* git: old rc should have commented alt-mappings
* git: new repo structure 
* commit

## References

https://github.com/craftzdog/dotfiles-public/tree/master/.config/nvim
https://blog.inkdrop.app/how-to-set-up-neovim-0-5-modern-plugins-lsp-treesitter-etc-542c3d9c9887

## plugins

### Markdown Preview

https://github.com/iamcco/markdown-preview.nvim

Need to run additional commands after adding it to the RC
```
:source %
:PlugiInstall
:call mkdp#util#install()
```

### vim-plug

INSTALL THIS FIRST (after NVIM)

https://github.com/junegunn/vim-plug

Install with 
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### LSPsaga

Better hits/tool tip UI

https://github.com/glepnir/lspsaga.nvim

### Tree sitter

https://github.com/nvim-treesitter/nvim-treesitter

Also insall parsers for each language (eg: `:TSInstall javascript`)

### Coq vim

Auto complete plugin.

https://github.com/ms-jpq/coq_nvim

### telescope

https://github.com/nvim-telescope/telescope.nvim

