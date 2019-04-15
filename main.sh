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
    curl -H "Content-Type: application/json; charset=utf-8"  -H "Authorization: Bearer ya29.c.ElrsBk3hmgNEa7qrBndn9fpD0s5hpCwN1qrRwzEfEZhaz8BzyRh2YGvPA4fCoAJvu_5MkJmq2kefQpjdqc853cNe2lTMgbanwbu9IWT1Sg2HH53R36juasSGWdo"  -d "{\"queryInput\":{\"text\":{\"text\":\"$input\",\"languageCode\":\"en\"}},\"queryParams\":{\"timeZone\":\"America/Los_Angeles\"}}" "https://dialogflow.googleapis.com/v2/projects/smalltalk-bash/agent/sessions/2613a9b3-0762-ea0b-746e-50127441b643:detectIntent"
    main
}

#I have no idea why this function works, but it does, so here it shall stay
keep() {
    main
}

echo " "
echo "Welcome to Smalltalk. Type in the console below to converse with the chatbot. If you need help, type in help()."

main