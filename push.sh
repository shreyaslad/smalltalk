add() {
    git add .
    printf "Enter your commit message: "
    read message
    git commit -m "$message"

    if [[ -z "$message" ]]; then
        printf "\nError: you must enter a commit message\n"
        add
    fi
}

git add .
printf "Enter your commit message: "
read message
git commit -m "$message"

if [[ -z "$message" ]]; then
    echo "Error: you must enter a commit message\n"
    add
fi

printf "Source: "
read source

if [[ -z "$source" ]]; then
    printf "Branch: "
    read branch
    if [[ -z "$branch" ]]; then
        git push origin master
    else
        git push origin $branch
    fi
#source
else
   printf "Branch: "
   read branch2
   if [[ -z "$branch2" ]]; then
        git push $source master
   else
        git push $source $branch2
   fi
fi