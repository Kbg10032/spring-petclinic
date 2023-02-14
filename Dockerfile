FROM adoptopenjdk/openjdk11 
RUN chmod u+x mvnw
CMD ["./mvnw", " clean", "package"]
ARG JAR_FILE_PATH=target/*.jar
COPY ${JAR_FILE_PATH} app.jar
ENRETOPINT ["java", "-jar", "spring-petcllinic.jar"}
