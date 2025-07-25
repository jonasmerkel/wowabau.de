# Use the official NGINX image as a base
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx static assets
RUN rm -rf ./*

# Copy built static files from dist to nginx html directory
COPY dist/ .

# Expose port 80
EXPOSE 80

# Use a minimal, explicit entrypoint
ENTRYPOINT ["nginx", "-g", "daemon off;"]
