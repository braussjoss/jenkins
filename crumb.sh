#/bin/bash

vage=$1

crumb=$(curl -u "jenkins:1234" -s 'http://jenkins.local:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
#curl -u "jenkins:1234" -H "$crumb" -X POST http://jenkins.local:8080/job/ENV/build?delay=0sec
#curl -u "jenkins:1234" -H "$crumb" -X POST http://jenkins.local:8080/job/mysql-%20bakcup-to-awsd/buildWithParameters?MYSQL_HOST=db_host&DATABASE_NAME=testdb&AWS_S3_BUCKET_NAME=jenkins-mysql-backup-brauss
curl -u "jenkins:1234" -H "$crumb" -X POST http://jenkins.local:8080/job/ansible-users-db/buildWithParameters?AGE=$vage
