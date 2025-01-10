# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any dependencies specified in requirements.txt
# Ensure the requirements.txt file exists in your project directory
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside this container (optional)
EXPOSE 8000

# Define environment variables
ENV PYTHONUNBUFFERED=1

# Run the Python application (replace `app.py` with your main script)
CMD ["python", "app.py"]
