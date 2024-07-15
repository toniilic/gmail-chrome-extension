#!/bin/bash

function show_menu {
    echo "Gmail CLI"
    echo "1. List Labels"
    echo "2. List Messages"
    echo "3. Send Message"
    echo "4. Exit"
    echo -n "Choose an option: "
}

while true; do
    show_menu
    read choice

    case $choice in
        1)
            node -e "require('./index').authorize().then(require('./index').listLabels)"
            ;;
        2)
            echo -n "Enter search query (optional): "
            read query
            node -e "require('./index').authorize().then(auth => require('./index').listMessages(auth, '$query'))"
            ;;
        3)
            echo -n "Enter recipient email: "
            read to
            echo -n "Enter subject: "
            read subject
            echo -n "Enter message body: "
            read body
            node -e "require('./index').authorize().then(auth => require('./index').sendMessage(auth, '$to', '$subject', '$body'))"
            ;;
        4)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac

    echo
done
