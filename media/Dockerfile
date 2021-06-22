FROM nginx:latest

RUN mkdir /root/logs
RUN chmod 755 -R /root
RUN export LANG=C.UTF-8
RUN export LANGUAGE=en_US:

CMD ["nginx", "-g", "daemon off;"]