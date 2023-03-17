FROM tomcat:8
# Take the war and copy to webapps of tomcat
COPY ./sampleproject-0.1.war /home/ec2-user


