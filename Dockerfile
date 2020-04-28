# This is a sample Dockerfile for future use.

# Required. The name of the image. You can get the list from Docker Hub.
FROM node:12 

# Updates the PATH environment if needed.
ENV PATH /usr/local/nginx/bin:$PATH 

# Copy files to a certain location in your Docker image
COPY . $HOME/app 

# Sets the working directory for any RUN, CMD, ENTRYPOINT, COPY, ADD instructions that follow. Always use the absolute paths for your workdir.
WORKDIR $HOME/app 

# Run a command in the terminal. It's better to reduce layers by separating with a backslash
RUN apt-get update && apt-get install -y \ 
	npm install \
	echo Done

# Expose ports if needed.
EXPOSE 8080 

# CMD should be used to run the software contained in your image.
# CMD [ "executable", "param1", "param2" ] 
CMD [ "node", "src/index.js" ] 
