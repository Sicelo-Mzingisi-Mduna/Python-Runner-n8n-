# Use Python 3.10 base image for compatibility
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install Git and certificates
RUN apt-get update && apt-get install -y git ca-certificates && rm -rf /var/lib/apt/lists/*

# Copy all files
COPY . .

# Upgrade pip
RUN python -m pip install --upgrade pip

# Install dependencies from GitHub
RUN pip install --no-cache-dir -r requirements.txt

# Make start script executable
RUN chmod +x start.sh

# Start the Python task runner
CMD ["./start.sh"]
