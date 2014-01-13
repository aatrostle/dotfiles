# Aaron Trostle Oh-My-Zsh Theme

# Colors
RED=$fg[red]
PINK=$FG[161]
BRANCH=$FG[013]
GREEN_BOLD=$fg_bold[green]
CYAN=$fg[cyan]
BLUE=$fg[blue]
BLUE_BOLD=$fg_bold[blue]
YELLOW=$fg[yellow]
GREY=$FG[024]
BLACK=$fg_bold[black]
RESET_COLOR=$reset_color

# git_prompt_info()
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""

# parse_git_dirty()
ZSH_THEME_GIT_PROMPT_DIRTY="%{$YELLOW%}✗ %{$RESET_COLOR%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# git_prompt_status()
# ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$RED%}unmerged"
# ZSH_THEME_GIT_PROMPT_DELETED=" %{$RED%}deleted"
# ZSH_THEME_GIT_PROMPT_RENAMED=" %{$YELLOW%}renamed"
# ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$YELLOW%}modified"
# ZSH_THEME_GIT_PROMPT_ADDED=" %{$GREEN%}added"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$GREEN%}?"

# git_prompt_ahead()
# ZSH_THEME_GIT_PROMPT_AHEAD=" %{$RED%}(!)"

# git_prompt_long_sha(), git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$BLACK%}@%{$RESET_COLOR%}%{$YELLOW%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$RESET_COLOR%}"

# Prompt format
# PROMPT='%{$RED%}➜ %{$GREEN_BOLD%}%p %{$CYAN%}%~ %{$BLUE_BOLD%}$(git_prompt_info)%{$BLUE_BOLD%} % %{$RESET_COLOR%}'

PROMPT='%{$RED%}➜ %{$RESET_COLOR%} $(parse_git_dirty)'
RPROMPT='%{$BLACK%}%~%{$RESET_COLOR%} %{$BRANCH%}$(current_branch)%{$RESET_COLOR%}$(git_prompt_short_sha)'

# Notes
# %n@%m
# $(~/.rvm/bin/rvm-prompt)
