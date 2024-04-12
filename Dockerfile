# Load the base image
FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
# COPY <SOURCE> <DESTINATION>
COPY . /app 

# Install any needed packages specified in requirements.txt
# Within workdir
RUN pip install --no-cache-dir -r flask-app/requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "flask-app/app.py"]