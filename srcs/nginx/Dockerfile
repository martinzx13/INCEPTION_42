#Create the host machine that will run the container.
FROM alpine:latest
#create the directory for the ssl certificates
RUN apk update && \
    apk add --no-cache nginx openssl

#Make the directory in the host machine.
RUN mkdir -p /etc/nginx/ssl

#Copy NGINX configuration
COPY ./config/nginx.config /etc/nginx/nginx.config

#Expose port 443 for the https connection. 
EXPOSE 443

CMD ["nginx", "-g", "daemon off"]