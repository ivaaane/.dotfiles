Configuration files for EndeavourOS, i3, kitty, fish and tmux.

## Needed scripts

**vim-plug**

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

**TPM**

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
