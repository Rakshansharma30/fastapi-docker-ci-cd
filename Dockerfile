# Use Ubuntu as the base image
FROM ubuntu:latest

# Install Python and necessary dependencies
RUN apt update && apt install -y python3 python3-pip

# Set the working directory
WORKDIR /app

# Copy application files
COPY . .

# Install dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 8000

# Run the FastAPI application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
