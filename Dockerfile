#FROM maven:3.9-eclipse-temurin-17 AS build
#WORKDIR /app
#COPY pom.xml .
#COPY src ./src
#RUN mvn clean package

#FROM amazoncorretto:17
#COPY --from=build /app/target/classes /app/classes
#ENTRYPOINT ["java", "-cp", "/app/classes", "com.napier.sem.App"]

#C:\Users\Anil A. Larcher\Desktop\seMethods2\src\main\java\com\napier\sem\App.java

FROM amazoncorretto:17
COPY ./target/classes/com /tmp/com
WORKDIR /tmp
ENTRYPOINT ["java", "com.napier.devops2.App"]