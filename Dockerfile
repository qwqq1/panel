FROM debian
WORKDIR /my
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y sudo
RUN apt-get install -y curl tzdata wget htop sudo
RUN sudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN curl -sSL https://resource.fit2cloud.com/1panel/package/quick_start.sh -o quick_start.sh && bash quick_start.sh
EXPOSE 9999
