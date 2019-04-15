# Smalltalk

Smalltalk is a bash program which tries to use Dialogflow in order to create a chatbot in the terminal. You just need to run the program and it will create a prompt where you can type

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
- [x] create basic interface with dialogflow
- [ ] add checks for specific intents
- [ ] execute code based on parameters from events
    - [ ] get request to Dialogflow project API
    - [ ] parse the json with jq
    - [ ] execute code (case specific)

## Known Bugs
- [x] commands not working after blank input