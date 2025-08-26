# Use Python 3.9 slim
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements first
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy everything else
COPY . /app/

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]

