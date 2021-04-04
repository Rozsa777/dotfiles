if [ -f ~/.bashrc ] ; then
  . ~/.bashrc
fi
alias ll='ls -l'
# Git のプロンプトと Git 入力補完シェルを読み込む
. /usr/local/etc/bash_completion.d/git-prompt.sh
. /usr/local/etc/bash_completion.d/git-completion.bash
# プロンプトの表示仕様を決めるオプション変数
GIT_PS1_SHOWDIRTYSTATE=true
# プロンプトの表示形式を宣言
export PS1='\[\033]0;$TITLEPREFIX:${PWD//[^[:ascii:]]/?}\007\]\n\[\033[32m\]\u@\h \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ '

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH=$JAVA_HOME:$PATH

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
. /Users/htsuchiya/.pyenv/versions/anaconda3-5.3.1/etc/profile.d/conda.sh

# rbenv settins
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# "-F":ディレクトリに"/"を表示 / "-G"でディレクトリを色表示
alias ls='ls -FG'
alias ll='ls -lFG'
alias vim="mvim -v"
