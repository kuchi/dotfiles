alias reload!='. ~/.zshrc'
alias zshrc="atom ~/.dotfiles"
alias ref-notes="atom ~/dev/ref-notes"
alias 1535="cd /Volumes/Collaborative/"

# Global alias for dl, can be anywhere in command
alias -g dl="~/Downloads"

# Quick search
# f png  # Shows all png files in currend directory recursively
function f() { find . -iname "*$1*" ${@:2} }
# r HTTP  # Find all files with HTTP in them in current dir recursively
function r() { grep "$1" ${@:2} -R . }
