# Use an official Ubuntu as a parent image
FROM ubuntu:latest


# Install Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Copy a sample index.html file into the Nginx default web directory
COPY index.html /var/www/html/index.html

# Expose port 80 to allow external access
EXPOSE 80

# Start Nginx in the foreground (to keep the container running)
CMD ["nginx", "-g", "daemon off;"]
