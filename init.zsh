#
# Node aliases/settings
#

() {

  #
  # nodenv
  #
  if (( ${+commands[nodenv]} )); then
    eval "$(nodenv init -)"
  fi

  #
  # N
  #
  if (( ${+commands[n]} )); then
    [ -z $N_PREFIX ] && export N_PREFIX="$HOME/.n"
  fi

  #
  # NVM
  #

  if [[ -f "${HOME}/.nvm/nvm.sh" || -f "${XDG_CONFIG_HOME}/nvm/nvm.sh" || -f "${NVM_DIR}/nvm.sh" ]]; then

    # Ensure NVM_DIR, if not set
    [ -z $NVM_DIR ] && export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"

    # Load NVM into the shell session
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

    # Load NVM bash_completion
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

  fi

}