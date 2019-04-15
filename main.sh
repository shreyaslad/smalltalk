main () {
    printf ">>> "
    read input
    echo "You said $input"
    main
}

echo " "
echo "Welcome to Smalltalk. Type in the console below to converse with the chatbot. If you need help, type in help()."

printf ">>> "
read input
if [[ -z "$input" ]];
then
    echo "You may not leave these fields blank. If you are unsure of what to do, type help()"
    main
else
    echo "You said $input"
    main
fi