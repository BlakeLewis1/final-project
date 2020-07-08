FROM openjdk:8u151-jdk

WORKDIR /app

ARG url
ARG username
ARG password
ENV url=$PROJECT_URI
ENV username=$username 
ENV password=$password

COPY . /app

RUN apt-get install git && \
    wget http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz && \
    tar -xvzf apache-maven-3.3.9-bin.tar.gz && \
    mv apache-maven-3.3.9 maven

RUN chmod +x mvnw

CMD ["./mvnw","spring-boot:run"]


