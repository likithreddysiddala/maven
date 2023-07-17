FROM nginx
# Take the war and copy to webapps of tomcat
COPY /var/index.html /var/www/html

