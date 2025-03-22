docker build -t mon-nginx .
docker run -d -p 8080:80 --name mon-serveur-nginx mon-nginx
