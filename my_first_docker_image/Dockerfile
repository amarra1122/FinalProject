FROM ubuntu

# This installs pandoc and vim
RUN apt-get update
RUN apt-get install -y pandoc
RUN apt-get install -y vim

#Create a new directory within our docker image
RUN mkdir /project
#Make our newly created directory as the working directory
WORKDIR /project
#Create a subdirecory within our current working directory
RUN mkdir project_subdirectory
#COPY a file to a directory in the image
COPY hello_world.R .

#ENV set envrionment variables in image
ENV MY_VARIABLE "some string"
ENV MY_VARIABLE_NUMBER 10

#What you type after a CMD will be default statements/commands once you create a container from the Docker image
CMD echo "Hi from your container"
