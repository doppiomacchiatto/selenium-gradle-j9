FROM adoptopenjdk/openjdk11-openj9:debian

LABEL author="juan@santisi.io" description="Java 9 image with Gradle and Selenium"

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  wget \
  git \
  unzip \
  chromium \
  chromium-driver

RUN wget https://services.gradle.org/distributions/gradle-6.4.1-bin.zip -P /tmp && \
  unzip -d /opt/gradle /tmp/gradle-*.zip

ENV GRADLE_HOME /opt/gradle/gradle-6.4.1

ENV PATH ${GRADLE_HOME}/bin:${PATH}