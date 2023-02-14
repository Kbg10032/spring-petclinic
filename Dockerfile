FROM adoptopenjdk/openjdk11 
CMD ["./mvnw", " clean", "package"]
ARG JAR_FILE_PATH=target/*.jar
COPY ${JAR_FILE_PATH} app.jar
ENRETOPINT ["java", "-jar", "spring-petcllinic.jar"}
