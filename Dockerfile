# Use Alpine latest as the base image
FROM alpine:latest

# Install NGINX
RUN apk add --no-cache nginx

# Create a directory for pid and run files
RUN mkdir -p /run/nginx

# Copy the default NGINX configuration files (if you have custom configurations)
# COPY nginx.conf /etc/nginx/nginx.conf
# COPY default.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
