# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# Add PMT Completion
autoload bashcompinit
bashcompinit
eval "$(_PMT_COMPLETE=source pmt)"
