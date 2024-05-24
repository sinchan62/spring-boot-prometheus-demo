FROM openjdk:8-jdk
RUN apt update
WORKDIR /home
COPY . /home
RUN ./gradlew build
RUN cp build/libs/spring-boot-with-prometheus-0.1.0.jar /home
EXPOSE 8080
ENTRYPOINT ["java","-jar","build/libs/spring-boot-with-prometheus-0.1.0.jar"]
