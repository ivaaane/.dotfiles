function fish_greeting
	echo "> welcome, $(set_color green)$(whoami)$(set_color normal)!!"
	echo "> today is $(set_color yellow)$(shirecal)$(set_color normal)."
	echo "> the moon is in $(set_color magenta)$(moon-phases | awk '{print tolower($0)}')$(set_color normal) phase $(moon-phases --emoji) $(moon-phases -z -t)"
	fortune | cowsay -f ~/.local/share/cowsay/kisa.cow
end
