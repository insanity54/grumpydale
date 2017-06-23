#!/bin/bash


# Gets the absolute path of the directory of this bash script. works in Linux & OSX
# greets to https://stackoverflow.com/questions/394230/detect-the-os-from-a-bash-script
# greets to https://stackoverflow.com/questions/3572030/bash-script-absolute-path-with-osx

function detectplatform {
    platform='unknown'
    unamestr=`uname`
    if [[ "$unamestr" == 'Linux' ]]; then
	platform='linux'
    elif [[ "$unamestr" == 'Darwin' ]]; then
	platform='darwin'
    fi
}

function osxrealpath {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

function getbindir {
    if [[ $platform == 'linux' ]]; then
	echo "$(dirname "$(readlink -fm "$0")")"  # linux
    elif [[ $platform == 'darwin' ]]; then
	echo "$(dirname "$(osxrealpath $0)")"     # osx
    fi
}

detectplatform
bindir=$(getbindir)


## Get username & password from user, then deploy via FTP.
## Greets to https://www.eduonix.com/blog/shell-scripting/how-to-automate-ftp-transfers-in-linux-shell-scripting/


printf "Please enter the FTP username: "
read username

printf "Please enter the FTP password: "
read -s password
printf '\n'

HOST=grumpydale.com




ftp -p4n $HOST 21 <<EOF
user $username $password
cd public_html
lcd $bindir/dist/
put test.txt
bye
EOF
