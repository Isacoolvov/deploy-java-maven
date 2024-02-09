FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    git \
    openjdk-11-jdk \
    maven

WORKDIR /app

RUN git clone https://gitlab.com/singularity-devops/spring-boot-docker.git .
RUN mvn clean install

CMD ["mvn", "spring-boot:run"]
