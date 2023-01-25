source ~/.zsh-git-prompt/zshrc.sh
local newline=$'\n'
local exit_code="%(?.%{$fg[green]%}✔%{$reset_color%}.%{$fg[red]%}✘%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg[magenta]%}"
export ZSH_GIT_PROMPT_SHOW_UPSTREAM=2
# export ZSH_THEME_GIT_PROMPT_CACHE=1
PROMPT='$exit_code %{$fg[yellow]%}%~%{$reset_color%} $(git_super_status)${newline}%T %{$%} '

# So that we can copy-paste with comments
set -k 

if [ -f ~/.bash_profile ]; then
  source ~/.bash_profile
fi

source ~/.bash_login
