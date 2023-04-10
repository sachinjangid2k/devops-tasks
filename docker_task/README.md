#Docker task <br />
created a docker file which takes the default file that contain nginx config files to remote server and also installed the wget, curl, and python3, <br />
expose the port 8090 <br />
# docker command for build container from dockerfile <br />
docker build -t sachinjangid2k/custom_nginx .
# docker command for running container <br />
docker run -d -p 8090:8090 --name test sachinjangid2k/custom_nginx 
#Docker hub URL 
https://hub.docker.com/repository/docker/sachinjangid2k/custom_nginx/general
