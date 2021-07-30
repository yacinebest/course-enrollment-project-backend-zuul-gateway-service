#docker image build -t zuul-gateway-service-spring .
FROM openjdk:15
EXPOSE 8765
ADD build/libs/zuul-gateway-service-0.0.1-SNAPSHOT.jar zuul-gateway-service-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=prod","/zuul-gateway-service-0.0.1-SNAPSHOT.jar"]