# Development instructions

## Devcontainer

You can use the [Developing inside a Container](https://code.visualstudio.com/docs/remote/containers) VS Code functionality to develop the program in an environment which is identical for everyone.

The folder .devcontainer manages the dokerfile for the development enviroment.

## Requirements

You can add new requirements in requirements.in file and then use the Makefile commands to compile and sync the new requirements

## usefull commands

make run - will run main.py 

make r - will upgrade requirements in requirements.in and requriements-dev.in to create requirements.txt and requirements dev.txt

make test - will run test.py

## secrets

all files in secrets folder are ignored for git upload commands.
