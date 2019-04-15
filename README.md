# Smalltalk

Smalltalk is a bash program which uses Dialogflow in order to become a chatbot in the terminal without the use of python. You just need to run the program and it will create a prompt where you can type

## Prerequisites

Install [jq](https://stedolan.github.io/jq/download/) for your OS

Know how to run bash scripts on your OS

Remove the stupid .profile file it won't go away with git ignore >:c

## Development Status

- [x] create infinite prompt
- [x] add basic commands
    - [x] help()
    - [x] exit()
    - [x] version()
- [ ] create basic interface with dialogflow
- [ ] add checks for specific intents
- [ ] execute code based on parameters from events
    - [ ] get request to Dialogflow project API
    - [ ] parse the json with jq
    - [ ] execute code (case specific)

## Known Bugs
- [x] commands not working after blank input