# パスを通す
# export PATH="$HOME/.anyenv/bin:$PATH"
# eval "$(anyenv init -)"
# export PATH=/usr/local/bin:$PATH
# export PATH=$HOME/.nodebrew/current/bin:$PATH
# export PATH=/usr/local/Cellar/git/2.14.2/bin:$PATH
# export PATH=/usr/local/opt/ruby/bin:$PATH
# export PATH=$HOME/.rbenv/bin:$PATH
# export GOPATH=$HOME/Workspace/go
# export PATH=$PATH:$GOPATH/bin
# eval "$(rbenv init -)"

# 環境変数
export LANG=ja_JP.UTF-8
export KCODE=u

# setopt & autoload
setopt prompt_subst
autoload -Uz vcs_info
autoload -Uz add-zsh-hook

#改行のない出力をプロンプトで上書きするのを防ぐ
unsetopt promptcr

# タブ補完時に大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# gitの設定
zstyle ':vcs_info:*' formats "%b"
precmd () { vcs_info }

# prompt
PROMPT='
[%F{6}%~%f] ${vcs_info_msg_0_}
$ '

# function
function viewList() {
  ls -a
}

# hook
add-zsh-hook chpwd viewList
