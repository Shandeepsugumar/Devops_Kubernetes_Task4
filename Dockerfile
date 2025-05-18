# Use the official Nginx image
FROM nginx:alpine

# Remove the default Nginx website files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static HTML files from the build directory to Nginx's web root
COPY build/ /usr/share/nginx/html/

# Expose port 80 (the default port for Nginx)
EXPOSE 80

# The default Nginx start command will run automatically (no CMD needed)
