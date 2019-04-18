#!/usr/bin/env bash
main () {
    printf ">>> "
    read input
    if [[ -z "$input" ]];
    then
        echo "You may not leave these fields blank. If you are unsure of what to do, type help()"
        main
    else
        echo -n "" > ./chatbot/data/input.json
        echo "{ \"input\": \"$input\" }" >> ./chatbot/data/input.json
        #can call python ./chatbot/main.py here
        python main.py
        
        intent=$(cat ./chatbot/data/output.json | jq '.intent.intentName')
        echo "$intent"
        if [[ "$intent" == "\"weather\"" ]];
        then
            city=$(cat ./chatbot/data/output.json | jq '.[]')
            echo "$city"
            state=$(cat ./chatbot/data/output.json | jq '.[]')
            echo "$state"
            #read API key from .env file
            #make cURL to Yahoo Weather API
        fi
        #add grep if statement here
        output=$(cat ./chatbot/data/output.json | jq '.slots[0].rawValue')
        echo "$output"
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
}2

#I have no idea why this function works, but it does, so here it shall stay
keep() {
    main
}

echo " "
echo "Welcome to Smalltalk. Type in the console below to converse with the chatbot. If you need help, type in help()."

main
