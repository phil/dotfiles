export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

eval "$(mise activate zsh)" # language version manager
eval "$(zoxide init zsh)" # Better cd
eval "$(atuin init zsh)" # Better shell history

# . ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/prompt

export EDITOR='vim'

fpath=(/Users/philbalchin/.docker/completions $fpath)

autoload -Uz compinit
compinit
