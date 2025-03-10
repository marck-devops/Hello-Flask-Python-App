# INSTRUCTION arguments
FROM python:3.14.0a5-bookworm

# sets the folder in the container environment where our application will reside
WORKDIR /testapp
    
# Copies the dependancy file to the container environment specified in the workdir command
COPY requirements.txt

#You can execute commands with run instruction
RUN pip install -r requirements.txt

#Copy everything including packages and application source code files in working directory (workdir)
COPY ..

#specifies the port on which our container app will run
EXPOSE 3003

# An ENTRYPOINT allows you to configure a container that will run as an executable.
#ENTRYPOINT ['python']

# Instruction sets the command to be executed when running a container from an image.
#CMD ['app.py']

CMD ['python', 'app.py']