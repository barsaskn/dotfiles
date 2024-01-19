#!/bin/bash

check_md5() {
    if [ $# -ne 2 ]; then
        echo "Usage: check_md5 <file1> <file2>"
        return 1
    fi

    file1="$1"
    file2="$2"

    # Check if files exist
    if [ ! -f "$file1" ]; then
        echo "Error: File '$file1' not found."
        return 1
    fi

    if [ ! -f "$file2" ]; then
        echo "Error: File '$file2' not found."
        return 1
    fi

    # Calculate MD5 sums
    md5sum1=$(md5sum "$file1" | awk '{print $1}')
    md5sum2=$(md5sum "$file2" | awk '{print $1}')

    # Compare MD5 sums
    if [ "$md5sum1" == "$md5sum2" ]; then
        print_success $file1 $file2
    else
        print_error $file1  $file2
    fi
}

print_success() {
    if [ $# -ne 2 ]; then
        echo "Usage: print_green <param1> <param2>"
        return 1
    fi

    param1="$1"
    param2="$2"

    # Print parameters in green
    echo -e "\e[32mFiles $param1 and $param2 are same\e[0m"
}

print_error() {
    if [ $# -ne 2 ]; then
        echo "Usage: print_error <param1> <param2>"
        return 1
    fi

    param1="$1"
    param2="$2"

    # Print parameters in red
    echo -e "\e[31mFiles $param1 and $param2 are different\e[0m"
}
localfiles=("${HOME}/.zshrc" "${HOME}/.zshenv" "${HOME}/.vimrc" "${HOME}/.tmux.conf" "${HOME}/.gitconfig" "${HOME}/.config/Code/User/settings.json" "${HOME}/.config/neofetch/config.conf" "${HOME}/.config/terminator/config")
repofiles=("./.zshrc" "./.zshenv" "./.vimrc" "./.tmux.conf" "./.gitconfig" "./.config/Code/User/settings.json" "./.config/neofetch/config.conf" "./.config/terminator/config")

for ((i=0; i<${#localfiles[@]}; i++)); do
    check_md5 ${localfiles[i]} ${repofiles[i]}
done
