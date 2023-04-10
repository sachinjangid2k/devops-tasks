# (FROM ubuntu AS base) taking a docker image
FROM ubuntu
# and removinf nginx configand updating apt
RUN apt update && apt install -y nginx && rm /etc/nginx/sites-enabled/default
# Installing packages
RUN apt install wget curl python3 -y
# custon nginx configration
COPY default /etc/nginx/sites-enabled/
#rxposing port 8090
EXPOSE 8090
# running nginx
CMD ["nginx", "-g", "daemon off;"]