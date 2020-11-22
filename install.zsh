function install_dot_file {
    readonly src=${1:?}
    readonly dst=$HOME/${2:?}

    if [[ -e $dst ]]
    then
        echo "$dst already exists"
    else
        echo "$src installed to $dst"
        ln -s "$HOME/.dotfiles/$src" "$dst"
    fi
}

install_dot_file "vim/vimrc" ".vimrc"
install_dot_file "vim/neovim-init.vim" ".config/nvim/init.vim"
install_dot_file "zsh/zshrc" ".zshrc"
install_dot_file "ideavim/ideavimrc" ".ideavimrc"
install_dot_file "doom.d" ".doom.d"

