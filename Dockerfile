# 1. Use the lightweight official Nginx Alpine image
FROM nginx:alpine

# 2. Mathematically "CD" into Nginx's default server folder
WORKDIR /usr/share/nginx/html

# 3. Wipe out default "Welcome to Nginx" placeholder files
RUN rm -rf ./*

# 4. Copy the entire contents of your local 'docs' folder straight into it
COPY docs/ .

# 5. Open port 80 for web traffic
EXPOSE 80

# 6. Fire up Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
