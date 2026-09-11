FROM amazoncorretto:17
COPY ./target/classes /app/classes
WORKDIR /app
ENTRYPOINT ["java", "-cp", "classes", "com.napier.sem.App"]

# C:\Users\Anil A. Larcher\Desktop\seMethods2\src\main\java\com\napier\sem\App.java