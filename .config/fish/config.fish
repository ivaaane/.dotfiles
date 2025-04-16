source "$HOME/.cargo/env.fish"

function fish_greeting
end

set -gx PATH $PATH /bin /usr/bin $HOME/.local/bin $HOME/.cargo/bin $HOME/scripts
set -gx TERMINAL kitty
set -gx OPENER rifle
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx BROWSER librewolf
set -gx DOTFILES $HOME/.dotfiles
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_DIRS /usr/local/share:/usr/share
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx HISTFILE ~/.local/share/fish/fish_history
set -gx HISTSIZE 1000
set -gx HISTFILESIZE 1000
set -gx LC_ALL en_US.UTF-8
set -gx DOTNET_CLI_TELEMETRY_OPTOUT 1

set fish_cursor_default     block
set fish_cursor_insert      block
set fish_cursor_replace_one block
set fish_cursor_visual      block

fish_vi_key_bindings
function fish_mode_prompt; end

if status is-interactive
    alias grep='grep --color=auto'
    alias lsl='tree -L2 -F --gitignore --dirsfirst'
    alias rmd='rm -rf'
    alias icat='kitten icat --align left'
    alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
    alias ..='cd ..'
    alias ...='cd ../..'
end
