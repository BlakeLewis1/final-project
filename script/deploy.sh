#!/bin/bash
. ~/.bashrc
sudo apt install mysql-client-core-8.0

mysql --host=34.105.175.39 --user=root --password=root < /home/jaesinc/final-project/spring-petclinic-rest/src/main/resources/db/mysql/initDB.sql

mysql --host=34.105.175.39 --user=root --password=root "petclinic" < /home/jaesinc/final-project/spring-petclinic-rest/src/main/resources/db/mysql/populateDB.sql

kubectl apply -f k8_deployment.yml