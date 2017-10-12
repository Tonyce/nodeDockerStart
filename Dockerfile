# Use an official Python runtime as a base image
FROM node:8.6

# Set the working directory to /app
WORKDIR /app

RUN npm install -g nodemon

COPY package.json /code/package.json

RUN npm install && npm ls

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
# EXPOSE 80
EXPOSE 8000
EXPOSE 5858

# Define environment variable
# ENV NAME World

# Run app.py when the container launches
CMD ["nodemon", "app.js"]