FROM tomcat:8
# Take the war and copy to webapps of tomcat
COPY /var/lib/jenkins/workspace/declarative-job/target/sampleproject-0.1.war /opt


