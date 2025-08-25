# Step 1: Use Python image
FROM python:3.11-slim

# Step 2: Set working directory
WORKDIR /app

# Step 3: Install dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Step 4: Copy app code
COPY app.py .

# Step 5: Expose port
EXPOSE 8080

# Step 6: Run app
CMD ["python", "app.py"]
