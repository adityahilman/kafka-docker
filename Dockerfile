FROM ubuntu:latest
MAINTAINER Aditya Hilman ( aditya.hilman@gmail.com )
RUN apt-get update && apt-get install -y software-properties-common && add-apt-repository ppa:webupd8team/java
RUN apt-get update && apt-get install -y oracle-java8-installer
RUN mkdir /app
WORKDIR /app
ADD kafka_2.11-0.10.2.0 /app 
