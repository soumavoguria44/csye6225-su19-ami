sudo yum -y update
    sudo yum -y install java-1.8.0-openjdk-devel
    sudo yum -y install wget
    sudo yum -y install tomcat
    sudo su
    sudo echo "JAVA_OPTS=\"-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512m -XX:MaxPermSize=256m -XX:+UseConcMarkSweepGC\"" | sudo tee -a /usr/share/tomcat/conf/tomcat.conf
    sudo yum -y install tomcat-webapps tomcat-admin-webapps
    # sudo lineNo=$(wc -l < /usr/share/tomcat/conf/tomcat-users.xml)
	sudo sed -i '$ d' /usr/share/tomcat/conf/tomcat-users.xml
    sudo sed -i '$ d' /usr/share/tomcat/conf/tomcat-users.xml
	sudo echo "<role rolename=\"manager-gui\"/>
            <user username=\"manager\" password=\"manager\" roles=\"manager-gui\"/>
            </tomcat-users>" | sudo tee -a /usr/share/tomcat/conf/tomcat-users.xml
    sudo systemctl start tomcat
    sudo systemctl restart tomcat
    sudo systemctl enable tomcat
    exit