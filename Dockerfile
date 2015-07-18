FROM ubuntu:14.04

RUN apt-get update 
RUN apt-get install -y xorg openbox tightvncserver
RUN apt-get install -y firefox
RUN rm -rf /var/lib/apt/lists/*
RUN echo "password\npassword\n\n" | vncpasswd

WORKDIR /

EXPOSE 5901

CMD export USER="root" && echo "password\npassword\n" | vncserver -name :1 && tail -F /root/.vnc/*.log
