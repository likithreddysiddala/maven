FROM tomcat:8
# Take the war and copy to webapps of tomcat
COPY /var/lib/jenkins/workspace/Maven/target/sampleproject-0.1.war /home/ec2-user/tomcat9/webapps/sampleproject-0.1.war


