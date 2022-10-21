local exit_status_format="[%{$fg_bold[red]%}!%{$reset_color%}]"
local exit_status="%(?::${exit_status_format} )"

local prefix="%{$fg_bold[yellow]%}("
local user_host="%{$fg_bold[cyan]%}%n%{$reset_color%}@%{$fg_bold[green]%}%m"
local cwd="%{$fg_bold[magenta]%}%c"
local suffix="%{$fg_bold[yellow]%})"
local prompt_symbol="%{$reset_color%}%% "

local git='$(git_prompt_info)$(git_prompt_status)'
local timedate='%{$fg_bold[cyan]%}$(date +%H:%M:%S)'

PROMPT="${exit_status}${prefix}${user_host} ${cwd}${suffix} ${prompt_symbol}"
RPROMPT="${git} ${timedate}%{$reset_color%}"
PROMPT2="%{$fg_bold[yellow]%}>%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[yellow]%}!"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[magenta]%}_"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}#"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[white]%}*"
