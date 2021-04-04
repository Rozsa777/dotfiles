#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
source /Users/htsuchiya/.bashrc

# rbenv settins
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# Java settings
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH=$JAVA_HOME:$PATH

# pyenv settings
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
. /Users/htsuchiya/.pyenv/versions/anaconda3-5.3.1/etc/profile.d/conda.sh
export PATH="/usr/local/opt/openssl/bin:$PATH"
alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew"

export PATH="/usr/local/opt/gettext/bin:$PATH"
