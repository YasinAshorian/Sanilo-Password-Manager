#!/bin/bash

PSSWORD_DIR="passwords.txt"

function add_password {
    echo "Enter the account name:"
    read account_name

    echo "Enter the username:"
    read username

    echo "Enter the password:"
    read password

    echo "$account_name:$username:$password" >> $PSSWORD_DIR

    echo "Password added successfully in sanilo password manager :)"
}

function get_password {
    echo "Enter the account name:"
    read account_name

    password=$(grep "^$account_name:" $PSSWORD_DIR | cut -d ":" -f 3)

    if [ -z "$password" ]
    then
        echo "Password not found!"
    else
        echo "Password: $password"
    fi
}

function update_password {
    echo "Enter the account name:"
    read account_name

    password=$(grep "^$account_name:" $PSSWORD_DIR | cut -d ":" -f 3)

    if [ -z "$password" ]
    then
        echo "Password not found!"
    else
        echo "Enter the new password:"
        read new_password

        sed -i "s/$account_name:.*:$password/$account_name:$username:$new_password/g" $PSSWORD_DIR

        echo "Password updated successfully in sanilo password manager :)"
    fi
}

function delete_password {
    echo "Enter the account name:"
    read account_name

    password=$(grep "^$account_name:" $PSSWORD_DIR | cut -d ":" -f 3)

    if [ -z "$password" ]
    then
        echo "Password not found!"
    else
        sed -i "/^$account_name:/d" $PSSWORD_DIR

        echo "Password deleted successfully in sanilo password manager :)"
    fi
}

function show_help {
    echo "Usage: password_manager.sh [OPTION]"
    echo "Options:"
    echo "  -sa, --add       Add a new password 🔐"
    echo "  -sg, --get       Get an existing password 👁"
    echo "  -su, --update    Update an existing password 💅"
    echo "  -sd, --delete    Delete an existing password 🔥"
    echo "  -h, --help      Show this help message 🙄"
}

while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -sa|--add)
    add_password
    shift
    ;;
    -sg|--get)
    get_password
    shift
    ;;
    -su|--update)
    update_password
    shift
    ;;
    -sd|--delete)
    delete_password
    shift
    ;;
    -h|--help)
    show_help
    shift
    ;;
    *)
    echo "Unknown option: $key"
    show_help
    exit 1
    ;;
esac
done
