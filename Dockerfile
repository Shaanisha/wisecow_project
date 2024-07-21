# Use an official lightweight base image
FROM ubuntu:latest

# Install required packages
#RUN apk add --no-cache bash netcat-openbsd cowsay fortune
RUN apt-get update && \
    apt-get install fortune-mod cowsay -y

# Set the working directory
WORKDIR /app

# Copy the application script into the container
COPY wisecow.sh .

# Make the script executable
RUN chmod +x wisecow.sh

# Expose the port that the service will run on
EXPOSE 4499

# Run the application
CMD ["./wisecow.sh"]
