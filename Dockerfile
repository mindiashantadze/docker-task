FROM openjdk:11
RUN apt-get update && apt-get install -y maven
ENV JAVA_HOME /usr/local/openjdk-11
RUN mkdir /docker-task
COPY . /docker-task
WORKDIR /docker-task
CMD mvn test -Dsuite=api