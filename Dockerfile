# Use a lightweight Python base image
FROM python:3.11-slim

# Create and set working directory
WORKDIR /app

# Copy only requirements to leverage Docker layer caching
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your code
COPY . .

# Default command (adjust as needed)
CMD ["python", "-c", "print('Container built successfully!')"]
