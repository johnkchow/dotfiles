source ~/.zsh-git-prompt/zshrc.sh
local newline=$'\n'
local exit_code="%(?.%{$fg[green]%}✔%{$reset_color%}.%{$fg[red]%}✘%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg[magenta]%}"
export ZSH_GIT_PROMPT_SHOW_UPSTREAM=2
PROMPT='$exit_code %{$fg[yellow]%}%~%{$reset_color%} $(git_super_status)${newline}%T %{$%} '
source ~/.bash_profile
source ~/.bash_login
