FROM tomcat
# Take the war and copy to webapps of tomcat

COPY /var/lib/jenkins/workspace/pipeline/target/sampleproject-0.1.war /opt/apache-tomcat-9.0.78/webapps

