# Use the official Python image from the Docker Hub
FROM python:3.12.5-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /app

# Copy the requirements file into the image
COPY requirements.txt /app/

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the image
COPY . /app/

# Expose port 8080
EXPOSE 80

# Run the application with Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "weather_project.wsgi:application"]