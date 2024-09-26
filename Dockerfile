# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /hello
COPY . /hello
RUN python3 -m pip install -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5001
ENV FLASK_APP=hello.py

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]