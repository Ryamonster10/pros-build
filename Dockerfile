FROM ubuntu:latest

RUN apt-get update && apt-get install -y apt-utils

# Install GCC & Clang
RUN apt-get install build-essential -y
RUN apt-get install clang -y

# Install needed ARM deps
RUN apt-get install gcc-arm-none-eabi -y
RUN apt-get install binutils-arm-none-eabi -y

# Install pip
RUN apt install python-pros-cli

# Install pros
RUN echo "Downloading PROS SDK"
RUN apt install python-pros-cli

# Build Project
# Copies file from action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
