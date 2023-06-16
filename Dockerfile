FROM debian
WORKDIR /my
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y sudo && apt-get install -y python3-pip && pip3 install --upgrade pip
RUN apt-get install -y curl tzdata wget htop sudo
RUN sudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
COPY *.sh .
RUN chmod a+x my.sh
EXPOSE 9999
CMD ["./my.sh"]
