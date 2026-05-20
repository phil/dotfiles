# Login Shell (e.g., SSH, terminal login, zsh -l)
#   1. /etc/zshenv - Always sourced first
#   2. ~/.zshenv - Always sourced (for environment variables)
#   3. /etc/zprofile - Login shells only
#   4. ~/.zprofile - Login shells only
#   5. /etc/zshrc - Interactive shells
#   6. ~/.zshrc - Interactive shells (aliases, functions, prompt)
#   7. /etc/zlogin - Login shells (after zshrc)
#   8. ~/.zlogin - Login shells (after zshrc)

# Interactive Non-Login Shell (e.g., opening a new terminal tab)
#   1. /etc/zshenv
#   2. ~/.zshenv
#   3. /etc/zshrc
#   4. ~/.zshrc

# Non-Interactive Shell (e.g., running a script)
#   1. /etc/zshenv
#   2. ~/.zshenv

# On logout:
#   1. /etc/zlogout
#   2. ~/.zlogout

export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

eval "$(mise activate zsh)" # language version manager
eval "$(zoxide init zsh)" # Better cd
eval "$(atuin init zsh)" # Better shell history

# . ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/prompt

export EDITOR='vim'

fpath=(/Users/phil.balchin/.docker/completions $fpath)
fpath=(/Users/phil.balchin/Code/zendesk/talk-scripts/completions $fpath)

autoload -Uz compinit
compinit
