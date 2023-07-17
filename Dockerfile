FROM nginx
# Take the war and copy to webapps of tomcat
COPY index.html /var/www/html

