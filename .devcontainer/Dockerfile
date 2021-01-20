FROM python:3.9.0-buster

# Configure apt and install packages
RUN apt-get update \
    #
    # Install packages needed for Python development
    && apt-get -y install --no-install-recommends exuberant-ctags \
    #
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
