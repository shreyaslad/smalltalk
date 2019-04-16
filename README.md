# Smalltalk

Smalltalk is a bash program which tries to use Snips NLU in order to create a chatbot in the terminal. You just need to run the program and it will create a prompt where you can type

## Prerequisites

Install [jq](https://stedolan.github.io/jq/download/) for your OS

Install [python3](https://python.org)

Download snips-nlu (`$pip install snips-nlu`)

## Installation

This assumes that you've already finished the prerequisites for installation above

`$ git clone https://github.com/penetratingshot/smalltalk.git`

`$ cd smalltalk`

`$ chmod +x ./main.sh`

`$ ./main`

That's all! Typing in `./main` will bring up a prompt. You can exit this prompt by using KeyboardInterrupt or `exit()`

## Development Status

- [x] create infinite prompt
- [x] add basic commands
    - [x] help()
    - [x] exit()
    - [x] version()
- [x] Training
    - [x] create training dataset for intents (may split up into different files)
    - [x] sync dataset to python code
- [ ] Working with Data
    - [ ] transfer utterance to a file
    - [ ] read utterance from file
    - [ ] shift utterance to python code
    - [ ] make prediction in python (can run from bash)
    - [ ] shift data to file
- [ ] Actually doing something
    - [ ] read from file
    - [ ] check intent and all entities
    - [ ] hardcode events based on that information

## Known Bugs
- [x] commands not working after blank input