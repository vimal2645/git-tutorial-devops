
# Use an official lightweight base image (alpine is small and fast)
FROM alpine:latest

# Set a working directory inside the container
WORKDIR /app

# Copy all files from your project repo into the container's /app directory
COPY . .

# (Optional) If you have any build commands, you can add them here, e.g.:
# RUN apk add --no-cache bash

# Default command to run when container starts
CMD ["sh", "-c", "echo Hello from my-app container!"]
