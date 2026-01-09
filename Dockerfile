# Use Python 3.11 base image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy all files from repo into container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make the start script executable
RUN chmod +x start.sh

# Start the Python task runner
CMD ["./start.sh"]
