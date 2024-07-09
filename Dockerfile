# Use an official nginx image as the base image
FROM nginx:alpine

# Copy the HTML file to the nginx html directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 8080
EXPOSE 8080

# Replace the default Nginx configuration with a custom one to use port 8080
RUN echo "server { listen 8080; location / { root /usr/share/nginx/html; index index.html; } }" > /etc/nginx/conf.d/default.conf

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
