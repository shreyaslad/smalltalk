main () {
    printf "> "
    read input
    echo "You said $input"
    main
}

echo "Welcome to Smalltalk. Type in the console below to converse with the chatbot. If you need help, type in help."

printf "> "
read input
if [[ -z "$input" ]];
then
    printf "please enter input"
    main
else
    echo "You said $input"
    main
fi