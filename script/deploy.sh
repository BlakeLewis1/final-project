#!/bin/bash
. ~/.bashrc
sudo apt install mysql-client-core-8.0

mysql --host= --user=${user} --password=${password} < /home/ubuntu/final-project/spring-petclinic-rest/src/main/resources/db/mysql/initDB.sql

mysql --host=${host} --user=${user} --password=${password} "petclinic" < /home/ubuntu/final-project/spring-petclinic-rest/src/main/resources/db/mysql/populateDB.sql
aws eks update-kubeconfig --name t3_eks


kubectl apply -f /home/ubuntu/final-project/Kubernetes/k8_backend.yaml
sleep 20
kubectl apply -f /home/ubuntu/final-project/Kubernetes/k8_frontend.yaml
sleep 20
kubectl apply -f /home/ubuntu/final-project/Kubernetes/k8_nginx.yaml
