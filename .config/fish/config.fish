source $HOME/.config/fish/functions/variables.fish
source $HOME/.config/fish/functions/abbr.fish
source $HOME/.config/fish/functions/greeting.fish

function fish_prompt
	printf '\e[1 q'
	printf "\n%s@%s : %s %s> " \
		(set_color green)(whoami) (hostname) \
		(set_color yellow)(prompt_pwd) \
		(set_color normal)
end
