#!/bin/bash
# Ctrl+C handler
function ctrl_c(){
    echo -e "\n\n [!] Exiting...\n"
    exit 1
}

trap ctrl_c INT

echo "TOOL BY SERGIO GONZÁLEZ SABUCEDO -> @seergiognzz"

# Variables
file=$2
file_new=$3
password=1
blue='\033[1;34m'
endColor='\033[0m'
declare -i counter=0

function HelpPanel() {
    echo -e "\nUsage: $0 [options] <file>\n"
    echo -e "Options:"
    echo -e "  -e  Encrypt file --> $0 -e <inputFile> <encryptedFile>.aes"
    echo -e "  -d  Decrypt file --> $0 -d <encryptedFile>.aes <outputFile>"
}

function Encrypt(){
    echo -e \"[!] Remember the password you use to encrypt the file. Without it, the content cannot be recovered.\"\n
    echo -e \"Enter the password to encrypt the file: \" && read password
    echo \"Password registered.\"
    openssl enc -aes-256-cbc -in $file -out $file_new -k \"$password\" &>/dev/null
}

function Decrypt(){
    echo -e \"Enter the password to decrypt the file: \" && read password
    echo \"Password registered.\"
    openssl enc -d -aes-256-cbc -in $file -out $file_new -k \"$password\"
}

while getopts \"edh\" args; do
    case $args in
       e) counter+=1;;
       d) counter+=2;;
       h) counter+=3;;
    esac
done

if [ $counter -eq 1 ]; then
    Encrypt
elif [ $counter -eq 2 ]; then
    Decrypt
elif [ $counter -eq 3 ]; then
    HelpPanel
else
    HelpPanel
fi

