FROM mailcow/mailcow-dockerized:latest
EXPOSE 25 587 993 995 80 443
ENV MAILCOW_HOSTNAME=localhost
WORKDIR /opt/mailcow-dockerized
CMD ["docker-compose", "up", "-d"]
