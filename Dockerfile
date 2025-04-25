# Verwende das offizielle nginx-Image
FROM nginx:alpine

# Entferne die Standard-NGINX-Website
RUN rm -rf /usr/share/nginx/html/*

# Kopiere den Inhalt von /dist ins NGINX-Verzeichnis
COPY dist/ /usr/share/nginx/html/

# Exponiere Port 80 für den Webserver
EXPOSE 80

# Starte NGINX im Vordergrund
CMD ["nginx", "-g", "daemon off;"]
