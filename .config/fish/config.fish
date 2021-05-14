# alias
alias :q="exit"
alias lc="colorls"
alias ssh="kitty +kitten ssh"

# env
set -x VISUAL vim
set -x QT_QPA_PLATFORMTHEME qt5ct
set -x LANG en_GB.UTF-8
set -x MOZ_USE_XINPUT2 1

# disable venv prompt
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

# powerline
function fish_prompt
  powerline-shell --shell bare $status
end
