# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt /app/

# Install any required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the project files into the container
COPY . /app

# Expose the port the app runs on
EXPOSE 8000

# Set the command to run the application
CMD ["python", "application.py"]
