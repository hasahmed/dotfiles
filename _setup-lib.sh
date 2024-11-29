setup_env () {
    env="bash"
    rc_file=".bashrc"
    if [ $1 = "zsh" ]; then
        env="zsh"
        rc_file=".zshrc"
    fi
    git submodule init
    git submodule update --recursive
    ln -sFi $HOME/.dotfiles/.vim $HOME/.vim
    ln -sFi $HOME/.dotfiles/.vim/.vimrc $HOME/.vimrc
    ln -sFi $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf

    #only bash
    if [ $env = "bash" ]; then
        cat ./$rc_file >> $HOME/$rc_file
    else
        #only zsh
        sh get-oh-my-zsh.sh
        ln -sFi $HOME/.dotfiles/.zshrc $HOME/.zshrc
        ln -sFi $HOME/.dotfiles/oh-my-zsh $HOME/.oh-my-zsh
    fi

    cat ./aliases-$env.txt >> $HOME/$rc_file
    cat ./aliases-general.txt >> $HOME/$rc_file
}
