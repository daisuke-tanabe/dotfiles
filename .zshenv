# zshenvの設定より優先されるのでpath_helperを呼び出さないようにする
setopt no_global_rcs

# path_helperを呼び出さないようにしたことでusr/local/binが足りなくなるので追記
PATH=/bin:/usr/bin:/usr/local/bin:${PATH}

# anyenv
export PATH=$HOME/.anyenv/bin:$PATH
eval "$(anyenv init -)"
