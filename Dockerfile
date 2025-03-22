FROM nginx:latest

# Copier la configuration principale
COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Copier les configurations des serveurs (default.conf)
COPY nginx/conf.d/ /etc/nginx/conf.d/

# Copier les fichiers du site web
COPY html/ /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
