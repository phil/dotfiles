setopt PROMPT_SUBST
. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/prompt

if [[ $OSTYPE == "darwin"* ]]; then
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

[[ -f ~/.zshrc.local ]] && . ~/.zsgrc.local

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
