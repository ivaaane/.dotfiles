function fish_greeting
	echo "> welcome, $(whoami)!!"
	echo "> today is $(shirecal)."
	echo "> the moon is in $(moon-phases | awk '{print tolower($0)}') phase $(moon-phases --emoji) $(moon-phases -z -t)"
	fortune | cowsay -f ~/.local/share/cowsay/kisa.cow
end
