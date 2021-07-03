light () {
    # ==color paper==
    echo "
set background=light
colorscheme PaperColor" > ~/dotfiles/nvim/after/plugin/themeControl.vim
    echo "include ./paper.conf" > ~/dotfiles/kitty/theme.conf
    echo "--theme=\"GitHub\"" > ~/dotfiles/bat/config
    cat ~/dotfiles/alacritty/alacritty-light.yml > ~/dotfiles/alacritty/alacritty.yml
}

dark () {
    # ==gruvbox==
    echo "
set background=dark
colorscheme gruvbox-material" > ~/dotfiles/nvim/after/plugin/themeControl.vim
    echo "include ./gruvbox-dark.conf" > ~/dotfiles/kitty/theme.conf
    echo "--theme=\"base16\"" > ~/dotfiles/bat/config
    cat ~/dotfiles/alacritty/alacritty-dark.yml > ~/dotfiles/alacritty/alacritty.yml
}
