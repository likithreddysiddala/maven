FROM tomcat:8
# Take the war and copy to webapps of tomcat
COPY workspace/declarative-job/target/sampleproject-0.1.war /home/ec2-user


