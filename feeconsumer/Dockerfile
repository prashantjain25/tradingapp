FROM maven:3.9.0-amazoncorretto-17 as builder

WORKDIR /module

COPY . .
RUN mvn clean package

FROM amazoncorretto:17

COPY --from=builder /module/target/feeconsumer-1.0-SNAPSHOT.jar /feeconsumer.jar

ENV JAVA_OPTS="-Xms128m -Xmx128m -server"
CMD [ "sh", "-c", "java $JAVA_OPTS -jar /feeconsumer.jar" ]