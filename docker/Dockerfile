FROM ubuntu
# Download from http://jdk.java.net/8/
ADD jdk-8u271-linux-x64.tar.gz /opt
# Set up env variables
ENV JAVA_HOME=/opt/jdk1.8.0_271
ENV PATH=$PATH:$JAVA_HOME/bin

# Setup scala and sbt
COPY setup_sbt.sh /setup/
RUN cd /setup && ./setup_sbt.sh
COPY run_spinalhdl_template.sh /setup/
RUN cd /setup && ./run_spinalhdl_template.sh

RUN useradd dev -u 1000

# CMD ["apt-get update"]
# CMD ["apt-get install curl gnupg -y"]
# CMD ["echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list"]
# CMD ["curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add"]
# CMD ["apt-get update"]
# CMD ["apt-get install sbt -y"]