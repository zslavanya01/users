FROM      maven
RUN       apt update -y
RUN       mkdir /home/
WORKDIR   /home
COPY      pom.xml .
RUN       mvn package

FROM      openjdk:8-jre-slim
COPY      --from=BUILD /todo/target/users.jar  
CMD       [ "java", "-jar", "users.jar" ]