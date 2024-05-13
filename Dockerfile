FROM openjdk:8

RUN apt update
WORKDIR /home
COPY . /home
RUN cp build/libs/spring-boot-with-prometheus-0.1.0.jar /home

EXPOSE 8080
ENTRYPOINT ["java","-jar","spring-boot-with-prometheus-0.1.0.jar"]

