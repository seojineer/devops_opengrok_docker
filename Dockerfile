FROM opengrok/docker:latest

# for using repo tool
RUN apt-get update && apt-get install -y python3
RUN ln -s /usr/bin/python3 /usr/bin/python
