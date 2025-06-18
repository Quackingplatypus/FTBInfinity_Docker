FROM ubuntu:24.04
# Delete the stupid ubuntu user that comes with default images
RUN userdel -r ubuntu

# Install Oracle Java 8 (Galactricraft has issues with OpenJDK8)
ARG JAVA_INSTALL="/usr/java"
WORKDIR /usr/java
ADD ./jdk-8u202-linux-x64.tar.gz .
# Add java installation to system path
ENV JAVA_HOME="${JAVA_INSTALL}/jdk1.8.0_202"
ENV PATH="${JAVA_HOME}/bin:$PATH"

# Minecraft Servers run on port 25565
EXPOSE 25565

# Add the default user of the system
ARG UID=1000
ARG USERNAME="minecraft"
RUN useradd -m -u "$UID" "$USERNAME"
USER "$USERNAME"
WORKDIR "/home/${USERNAME}"
RUN mkdir server
