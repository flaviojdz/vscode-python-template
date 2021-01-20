# Development instructions

## Devcontainer

You can use the [Developing inside a Container](https://code.visualstudio.com/docs/remote/containers) VS Code functionality to develop the program in an environment which is identical for everyone.

The folder .devcontainer manages the dokerfile for the development enviroment.

## Windows

In order to make the utility scripts cross-platform, they use the GNU Make format.

`make` is easily available for installation on MacOS and Linux, but on Windows you need to install it via [Make for Windows](http://gnuwin32.sourceforge.net/packages/make.htm). Download the executable file ("Binaries" link) and copy it to `C:\windows\system32\make.exe` (note the `32` suffix). Download the `libiconv2.dll` & `libintl3.dll` libraries ("Dependencies" link) and copy them to `C:\windows\system` (note the *lack of* `32` suffix). Then the `make` command should work in the Command Prompt.

## Requirements

You can add new requirements in requirements.in file and then use the Makefile commands to compile and sync the new requirements

## Production

The production enviroment its manage by the Dockerfile on the main folder alond with the docker-compose.yml.

Volumes and Enviroment on docker-compose.yml can be remove if there is no datadog support on production.
