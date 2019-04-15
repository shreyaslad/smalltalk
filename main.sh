main () {
    printf ">>> "
    read input
    if [[ -z "$input" ]];
    then
        echo "You may not leave these fields blank. If you are unsure of what to do, type help()"
        main
    else
        if [[ "$input" == "help()" ]];
        then
            ./scripts/help.sh
            keep
        elif [[ "$input" == "exit()" ]];
        then
            echo "Leaving Smalltalk. Goodbye"
            exit
        elif [[ "$input" == "version()" ]];
        then
            ./scripts/version.sh
            keep
        fi
    fi
    main
}

#I have no idea why this function works, but it does, so here it shall stay
keep() {
    main
}

echo " "
echo "Welcome to Smalltalk. Type in the console below to converse with the chatbot. If you need help, type in help()."

main