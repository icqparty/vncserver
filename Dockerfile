FROM ubuntu:14.04

RUN apt-get update && \
  apt-get install -y xorg openbox tightvncserver && \
  apt-get install -y firefox && \
  rm -rf /var/lib/apt/lists/* && \
  echo "password\npassword\n\n" | vncpasswd

WORKDIR /

EXPOSE 5901

CMD export USER="root" && echo "password\npassword\n" | vncserver -name :1 && tail -F /root/.vnc/*.log
