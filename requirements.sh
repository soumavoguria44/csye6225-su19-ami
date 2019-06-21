                sudo yum update
                sudo yum install java-11-openjdk-devel -y
                sudo yum install wget -y
                cd /opt
                sudo su
                sudo wget http://mirrors.koehn.com/apache/tomcat/tomcat-8/v8.5.42/bin/apache-tomcat-8.5.42.tar.gz
                sudo tar -zvxf apache-tomcat-8.5.42.tar.gz
                sudo rm -r apache-tomcat-8.5.42.tar.gz
                sudo mv apache-tomcat-8.5.42 Tomcat
                sudo cd Tomcat/bin
                sudo chmod +x startup.sh
                sudo chmod +x shutdown.sh
                sudo ln -s /opt/Tomcat/bin/startup.sh /usr/bin/tomcatup
                sudo ln -s /opt/Tomcat/bin/shutdown.sh /usr/bin/tomcatdown
                sudo tomcatup