PROMPT='$(prompt_emoji) $(git_prompt_info)%{$fg[yellow]%}✈%{$reset_color%} '
RPROMPT='%{$fg[green]%}%c%{$reset_color%} $(battery_pct_prompt)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%} %{$fg[red]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"

function prompt_emoji() {
  if [ $? -eq 0 ]
  then
    echo -e 🏂
  else
    echo -e 💥
  fi
}
