### \=======================================================

### DevOps Lab 06: Production Dockerfile Blueprint

### \=======================================================

### Step 1: Use an official, secure, and minimal Linux-Python runtime base image

FROM python:3.11-slim

### Step 2: Set the internal system working directory inside the container

WORKDIR /app

### Step 3: Copy any local configuration dependency lists into the workspace

COPY requirements.txt .

### Step 4: Run system installations without caching setup files to save memory

RUN pip install --no-cache-dir -r requirements.txt

### Step 5: Copy the remaining application source code files into the container

COPY . .

### Step 6: Inform the runtime network layer that the container listens on port 5000

EXPOSE 5000

### Step 7: Define the structural execution command to launch the app securely

CMD ["python", "app.py"]
