PROMPT='%{$fg_bold[red]%}\_%{$fg_bold[green]%} %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="ﱿ "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}ﲅ" 
ZSH_THEME_GIT_PROMPT_CLEAN=""

RPROMPT='$(git_prompt_status)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ﮫ"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[cyan]%} "
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[cyan]%} "

