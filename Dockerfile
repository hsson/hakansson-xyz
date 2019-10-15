FROM arm32v7/nginx:1.17

# Copy website content
COPY src /usr/share/nginx/html

# Copy nginx configs
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf