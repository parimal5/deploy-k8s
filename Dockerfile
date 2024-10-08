FROM maven:3.8.6-eclipse-temurin-17-alpine AS build_img

WORKDIR /app

COPY . .

RUN mvn clean package -DskipTests


FROM tomcat:10.1-jdk17


RUN rm -rf /usr/local/tomcat/webapps/*


COPY --from=build_img /app/target/ROOT.war /usr/local/tomcat/webapps/


EXPOSE 8080

CMD ["catalina.sh", "run"]