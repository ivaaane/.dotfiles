set -gx HOME $HOME
set -gx PATH $PATH /bin /usr/bin $HOME/.local/bin $HOME/.cargo/bin
set -gx XDG_DATA_DIRS /usr/local/share:/usr/share
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx TERMINAL kitty
set -gx BROWSER firefox
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_SCREENSHOTS_DIR $HOME/downloads
set -gx LC_ALL en_US.UTF-8
set -gx HISTFILE ~/.config/fish/fish_history
set -g HISTSIZE 50
set -g HISTFILESIZE 50
set -gx GTK_IM_MODULE ibus
set -gx QT_IM_MODULE ibus
set -gx XMODIFIERS "@im=ibus"
set -gx GLFW_IM_MODULE ibus


alias grep='grep --color=auto'
alias ls='tree -L2 -F --gitignore --dirsfirst'
alias clear='printf "\033[3J\033[H\033[2J"'
alias rmd='rm -rf'
alias icat='kitten icat --align left'
alias clip='kitten clipboard'
alias woman='man'
alias ..='cd ..'
alias ...='cd ../..'

function fish_greeting
end

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
	printf '%s%s ❯ %s' \
		(set_color brblack)(prompt_pwd) \
		(set_color $mode_color) \
		(set_color normal)
end

if not set -q TMUX
    tmux
end

if not status is-interactive
	return
end
