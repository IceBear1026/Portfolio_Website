# This FROM is using official NGINX alpine image as a base image. Docker recommends using trusted base images such as Docker Official Images or Verified Publisher images as a better starting point. 
FROM nginx:1.27-alpine

# Copy the custom NGINX configuration file and static assets to the appropriate locations in the container
# Since we have our own index.html, style.css, script.js, and assets folder, we need to copy them to the NGINX default directory for serving static files. 
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY script.js /usr/share/nginx/html/script.js
COPY assets/ /usr/share/nginx/html/assets/

# This shows that this container services port 80. EXPOSE does NOT publish the port by itself. It only documents the port. This is why we will still run: "docker run --rm -p 8080:80 asmaa-portfolio:local" 
# This maps your laptop 8080 -> container port 80. So when you go to http://localhost:8080, you will be hitting the container's port 80.
EXPOSE 80

# The normal NGINX container often runs as root by default so it can bind to port 80 and manage NGINX paths. For production-style kubernetes, it is better to run containers as a non-root user. Kubernetes security contexts are specifically used to control things like running privileged/unprivileged and user/group permissions. 

# FROM nginxinc/nginx-unprivileged:1.27-alpine

# COPY nginx.conf /etc/nginx/conf.d/default.conf
# COPY index.html /usr/share/nginx/html/index.html
# COPY style.css /usr/share/nginx/html/style.css
# COPY script.js /usr/share/nginx/html/script.js
# COPY assets/ /usr/share/nginx/html/assets/

# EXPOSE 8080