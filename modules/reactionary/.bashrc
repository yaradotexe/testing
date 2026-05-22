# Project Icarus - Shell Defaults
# Included in /etc/skel/.bashrc

# Aliases for Icarus Tools
alias sun='sun'
alias assistant='icarus-portal'
alias portal='icarus-portal'
alias wizard='icarus-wizard --force'
alias oopsie='sun --oopsie'
alias melt='sun --melt'

# Retro Vibe Aliases
alias cls='clear'
alias dir='ls -lah'
alias copy='cp -iv'
alias move='mv -iv'
alias del='rm -iv'

# System
alias upgrade='sun --push'

# Welcome message
if [ -f "$HOME/.config/icarus-setup-done" ]; then
    fastfetch
    echo ""
    echo -e "\033[0;34mProject Icarus - System Ready.\033[0m"
    echo "Type 'sun' for management or 'assistant' for settings."
fi
