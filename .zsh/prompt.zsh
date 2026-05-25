RESET='%f'
WHITE='%F{white}'
GREEN='%F{green}'
BLUE='%F{orange}'

if [[ $EUID -eq 0 ]]; then
  USER_COLOR=$GREEN
else
  USER_COLOR=$WHITE
fi

virtualenv_prompt() {
  [[ -n "$VIRTUAL_ENV" ]] && echo "${GREEN}[$(basename $VIRTUAL_ENV)]${RESET}"
}

git_branch_prompt() {
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  [[ -n "$branch" ]] && echo "${GREEN}[$branch]${RESET}"
}

PROMPT="${WHITE}┌──(${USER_COLOR}%n@%m${WHITE})-[%~]$(virtualenv_prompt)$(git_branch_prompt)
└─${GREEN}# ${RESET}"
