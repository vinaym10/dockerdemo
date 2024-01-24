# Use an official lightweight Node.js image
FROM node:alpine

# Set the working directory
WORKDIR /app

# Clone the repository into the container
RUN apk --no-cache add git
RUN git clone https://github.com/vinaym10/dockerdemo.git .

# Expose port 80
EXPOSE 80

# Command to run on container start
CMD ["node", "-e", "require('http').createServer((req, res) => res.end(require('fs').readFileSync('index.html'))).listen(80);"]
