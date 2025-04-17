# Use official nginx base image
FROM nginx:alpine

# Remove default nginx static file
RUN rm -rf /usr/share/nginx/html/*

# Copy build output to nginx's html directory
COPY build/ /usr/share/nginx/html/

# Copy custom nginx config (optional, can skip if not needed)
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

