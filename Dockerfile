FROM nginx
# Take the war and copy to webapps of tomcat
COPY /var/lib/jenkins/workspace/pipeline/target/index.html /var/www/html

