function fzf_sudo_edit
    if [ ! -n "$argv" ]
        set -l file (fd --hidden --type file . --exclude .git --exclude node_modules | fzf --preview 'bat --theme=GitHub --color=always --style=numbers --line-range=:500 {}')

        if [ ! -z "$file" ]
            sudo -e "$file"
        end
    else
        sudo -e "$argv"
    end
end
