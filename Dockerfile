FROM nginx
# Take the war and copy to webapps of tomcat
COPY /home/ec2-user/index.html /opt

