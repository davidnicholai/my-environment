# This is a sample Dockerfile for future use.

FROM node:12 # Required. The name of the image. You can get the list from Docker Hub.

ENV PATH /usr/local/nginx/bin:$PATH # Updates the PATH environment.

COPY . /src #  Copy files to a certain location in your Docker image

WORKDIR somefolder # Sets the working directory for any RUN, CMD, ENTRYPOINT, COPY, ADD instructions that follow. Always use the absolute paths for your workdir.

RUN apt-get update && apt-get install -y \ # Run a command in the terminal. It's better to reduce layers by separating with a backslash
	package-bar \
	package-foo

EXPOSE 8080 # Expose ports if needed.

CMD [ "executable", "param1", "param2" ] # CMD should be used to run the software contained in your image.

