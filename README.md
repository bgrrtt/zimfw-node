# Node

Provides Node version management integrations and associated completions.

## NVM

If you have NVM installed (a `nvm.sh` is present in either `${HOME}/.nvm` or `${XDG_CONFIG_HOME}/nvm` or `$NVM_DIR`), this package will load NVM and bash_completion into the shell session. To install NVM, see [https://github.com/nvm-sh/nvm](https://github.com/nvm-sh/nvm).

## N

If you have N installed, this package will set `N_PREFIX="$HOME/.n"` if `N_PREFIX` isn't already defined. To install N, see [https://github.com/tj/n](https://github.com/tj/n).

## nodenv

If you have nodenv installed, this package will `eval "$(nodenv init -)"`. To install nodenv, see [https://github.com/nodenv/nodenv](https://github.com/nodenv/nodenv).
