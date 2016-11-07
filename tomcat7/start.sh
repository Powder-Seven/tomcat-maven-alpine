#! /bin/sh

if [ -d /usr/src/app ]; then
	cd /usr/src/app
	mkdir target
	mvn install
	cd /usr/local/tomcat

	cp /usr/src/app/target/*.war ./webapps/ 2&>/dev/null
fi

/usr/local/tomcat/bin/catalina.sh run