# Credit for this image goes to https://github.com/craigthackerx/infrac-stak

# Use Ubuntu or u dum dum
FROM ulsmith/alpine-apache-php7

# Ports
EXPOSE 80 443 9999

# Use bash from now on
SHELL ["/bin/bash", "-c"]

# Install & update hings
RUN apk add --no-cache \ 
    bash \
    curl \
    git \
    ifupdown \
    mariadb \
    nano \
    openjdk8 \
    openssl \
    unzip \
    wget \
    zip \
    openrc


# Install Apache GUI - go to http://docker-ip:9999/ApacheGUI
RUN mkdir /usr/local/apachegui
RUN cd /usr/local/apachegui \
    && curl https://netactuate.dl.sourceforge.net/project/apachegui/1.12-Linux-Solaris-Mac/ApacheGUI-1.12.0.tar.gz -o ApacheGUI-1.12.0.tar.gz \
    && tar -xvzf ApacheGUI-1.12.0.tar.gz \
    && rm *.tar.gz
ADD run.sh /usr/local/apachegui/ApacheGUI/bin/run.sh

# Add a standard user for later and open permissions to the needed directories
RUN echo 'export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"' >>$HOME/.bashrc
RUN chmod 777 -R /usr/local

ENTRYPOINT rc-service apache2 start \
    && sudo -S rc-service ssh start \
    && /usr/local/apachegui/ApacheGUI/bin/run.sh \
    && tail -f /dev/null
