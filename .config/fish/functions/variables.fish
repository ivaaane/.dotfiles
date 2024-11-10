# places
set -gx HOME $HOME
set -gx PATH $PATH /bin /usr/bin $HOME/.local/bin $HOME/.cargo/bin
set -gx XDG_DATA_DIRS ~/.local/share/applications

# applications
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx TERMINAL kitty
set -gx BROWSER firefox

# places
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_SCREENSHOTS_DIR $HOME/downloads

# locale
set -gx LC_ALL en_US.UTF-8

# history
set -gx HISTFILE ~/.config/fish/fish_history
set -g HISTSIZE 50
set -g HISTFILESIZE 50

# ibus
set -gx GTK_IM_MODULE ibus
set -gx QT_IM_MODULE ibus
set -gx XMODIFIERS "@im=ibus"
set -gx GLFW_IM_MODULE ibus

if not status is-interactive
	return
end
