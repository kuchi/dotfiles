alias reload!='. ~/.zshrc'
alias zshrc="atom ~/.dotfiles"

# Suffix aliases, will open these file types with following program
alias -s pdf=open
alias -s jpg=open
alias -s png=open
# alias -s txt=less
# alias -s md=less

# Global aliases can be used anywhere in the command line
alias -g D='~/Downloads/'
alias -g d='~/dev/'
alias -g p='~/dev/projects/'

# Easy file moving ***AMAZINGLY EASY***
alias mmv='noglob zmv -W'
# mmv *.dat *.dat_old or mmv foo.* bar.*
# mmv **/*2008.mp3 **/*2009.mp3 and all matching files residing in any subdir
