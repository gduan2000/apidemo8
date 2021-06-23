ARG BASE_IMAGE
ARG RUN_ON_PORT
FROM ${BASE_IMAGE}
WORKDIR /
COPY build/libs/hello-world-0.0.1-SNAPSHOT.jar hello-world.jar
ENV PORT ${RUN_ON_PORT}
EXPOSE ${PORT}
CMD java -jar hello-world.jar