function fish_greeting
	echo "> welcome, $(whoami)!!"
	echo "> today is $(shirecal)."
	echo "> the moon is in $(moon-phases | awk '{print tolower($0)}') phase $(moon-phases --emoji) $(moon-phases -z -t)"
	fortune pona | cowsay -f $(shuf -n 1 -e ~/.local/share/cowsay/kisa.cow) -W 20
end
