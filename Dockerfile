FROM nginx:alpine

# Clear the default page
RUN rm -rf /usr/share/nginx/html/*

# Copy your files to the web root
COPY . /usr/share/nginx/html/

EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
