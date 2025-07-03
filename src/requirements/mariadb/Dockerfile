#Get the skeleton for the docker

FROM alpine:3.20

#Run and install the database in the alpine

RUN apk update && apk add --no-cache mariadb mariadb-client

#Create the folder to storage the data in mariadb

RUN mkdir -p /var/lib/mysql

#Copy the entrypoint to run the init script

COPY ./tools/mariadb-entrypoint.sh /mariadb-entrypoint.sh

#Give the permisions to execute
RUN chmod +x ./mariadb-client.sh

ENTRYPOINT [ "mariadb-client.sh" ]