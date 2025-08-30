# Use python base image
FROM python:3.10-slim

#set working directory
WORKDIR /app

# Copy requirements first (for caching layers)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

#Copy source code
COPY . . 

#Expose port
EXPOSE 5000

#Run the app
CMD ["python" , "app.py"]
