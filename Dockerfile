FROM tomcat
# Take the war and copy to webapps of tomcat

 COPY target/*.war /opt

