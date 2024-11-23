function fish_greeting
	echo "> welcome, $(set_color green)$(whoami)$(set_color normal)!!"
	echo "> today is $(set_color yellow)$(shirecal)$(set_color normal)."
	echo "> the moon is in $(set_color magenta)$(moon-phases | awk \
        '{print tolower($0)}')$(set_color normal) phase $(moon-phases \
        --text-emoji)  $(moon-phases -z -t)"
    echo "> weather report in Barcelona: $(set_color cyan)$(curl -s \
        'wttr.in/Barcelona?format=%t,+%C+%c\n')$(set_color normal)"
    echo "> it's been $(set_color brwhite)$(daysago 2020-3-14)$(set_color \
        normal) days since the quarantine started."
    echo "> you have $(set_color red)$(newsboat \
        -x print-unread)$(set_color normal) in your RSS feed."
	fortune | cowsay -f ~/.local/share/cowsay/kisa.cow -W 55
end
