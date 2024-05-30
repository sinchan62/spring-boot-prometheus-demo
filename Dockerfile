FROM openjdk:8-jdk
RUN apt update
COPY . /
RUN cp build/libs/spring-boot-with-prometheus-0.1.0.jar /
EXPOSE 8080
ENTRYPOINT ["java","-jar","build/libs/spring-boot-with-prometheus-0.1.0.jar"]
