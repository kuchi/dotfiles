alias reload!='. ~/.zshrc'
alias zshrc="atom ~/.dotfiles"
alias ref-notes="atom ~/dev/ref-notes"
# alias 1535="cd /Volumes/Collaborative/"

# Global alias for dl, can be anywhere in command
alias -g dl="~/Downloads"

# Quick search
# f png  # Shows all png files in currend directory recursively
function f() { find . -iname "*$1*" ${@:2} }
# r HTTP  # Find all files with HTTP in them in current dir recursively
function r() { grep "$1" ${@:2} -R . }

# Multi move
alias mmv='noglob zmv -W'

# Overwrite prezto cdf, it doesn't work with my network shares
function cdf2 () {
   currFolderPath=$( /usr/bin/osascript <<"         EOT"
       tell application "Finder"
           try
               set currFolder to (folder of the front window as alias)
           on error
               set currFolder to (path to desktop folder as alias)
           end try
           POSIX path of currFolder
       end tell
         EOT
   )
   echo "cd to \"$currFolderPath\""
   cd "$currFolderPath"
}
