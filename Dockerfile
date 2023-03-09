FROM ubuntu:latest AS BUILD_IMAGE
RUN apt update && apt install wget unzip -y
RUN wget https://www.tooplate.com/zip-templates/2130_waso_strategy.zip
RUN unzip 2130_waso_strategy.zip && cd 2130_waso_strategy && tar -czf waso_strategy.tgz * && mv waso_strategy.tgz /root/waso_strategy.tgz


FROM ubuntu:latest
LABEL "project"="Cooking"
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install apache2 git wget -y
COPY --from=BUILD_IMAGE /root/waso_strategy.tgz /var/www/html
RUN cd /var/www/html && tar xzf waso_strategy.tgz
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
VOLUME /var/log/apache2
WORKDIR /var/www/html
EXPOSE 80