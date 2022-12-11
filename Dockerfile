FROM ubuntu:22.04

ARG MB_VERSION

RUN apt update && apt install -y default-jre curl

RUN curl -LO https://downloads.metabase.com/$MB_VERSION/metabase.jar

ENTRYPOINT ["jara", "-jar", "metabase.jar"]

