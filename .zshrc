setopt PROMPT_SUBST
. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/prompt

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ -f ~/.zshrc.local ]] && . ~/.zsgrc.local


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
