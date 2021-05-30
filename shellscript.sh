 #!/bin/bash

 ssh centos@172.31.41.195

 cd /

 sudo chown -R centos:centos opt/

 cd /opt

 git clone https://github.com/jahirshaik/ansible-project.git

 cd /opt/ansible-project/webapp

 mvn clean package

 sudo scp -r /opt/ansible-project/webapp ssh centos@172.31.40.84:/opt/apache-tomcat-8.5.23/webapps/
