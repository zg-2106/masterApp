FROM openjdk:8
RUN mkdir retailApp
ADD target/retailApp-0.0.1-SNAPSHOT.jar retailApp/retailApp-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar" ,"retailApp/retailApp-0.0.1-SNAPSHOT.jar"]