function fish_greeting
end

set -gx HOME $HOME
set -gx PATH $PATH /bin /usr/bin $HOME/.local/bin $HOME/.cargo/bin

set -gx TERMINAL kitty
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx BROWSER qutebrowser
set -gx DOTFILES $HOME/.dotfiles
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_DIRS /usr/local/share:/usr/share
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state
set -gx XDG_CACHE_HOME $HOME/.cache

set -gx HISTFILE ~/.local/share/fish/fish_history
set -gx HISTSIZE 50
set -gx HISTFILESIZE 1000

set -gx LC_ALL en_US.UTF-8

fish_vi_key_bindings
function fish_mode_prompt; end

function fish_prompt
    switch $fish_bind_mode
        case default
            set mode_color green
        case insert
            set mode_color cyan
        case replace_one
            set mode_color purple
        case visual
            set mode_color yellow
        case '*'
            set mode_color red
    end

	printf '\e[1 q'
    printf '%s%s > %s' \
		(set_color brblack)(prompt_pwd) \
		(set_color $mode_color) \
		(set_color normal)
end


if status is-interactive
    alias grep='grep --color=auto'
    alias lsl='tree -L2 -F --gitignore --dirsfirst'
    alias rmd='rm -rf'
    alias icat='kitten icat --align left'
    alias clip='kitten clipboard'
    alias woman='man'
    alias ..='cd ..'
    alias ...='cd ../..'
    alias nvim='nvim --listen /tmp/godothost'
    alias dotfiles='git --git-dir=/home/ivan/.dotfiles/.git --work-tree=/'

    if not set -q TMUX
        tmux
    end
end
