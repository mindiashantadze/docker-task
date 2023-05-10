FROM openjdk:11
RUN apt-get update && apt-get install -y maven
ENV JAVA_HOME /usr/local/openjdk-11
ENV TEST_SUITE=api
RUN mkdir /docker-task
COPY . /docker-task
WORKDIR /docker-task
CMD mvn test -Dsuite=$TEST_SUITE