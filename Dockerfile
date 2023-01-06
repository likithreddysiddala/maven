FROM tomcat:8
# Take the war and copy to webapps of tomcat
COPY /var/lib/jenkins/workspace/Maven/target/*.war /home/ec2-user/tomcat9/webapps/myweb.war


