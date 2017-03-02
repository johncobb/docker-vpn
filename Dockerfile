
FROM ubuntu:16.04

RUN apt-get update && apt-get install -y vpnc
RUN apt-get -y install cron
RUN apt-get -y install net-tools
RUN apt-get -y install ssh
RUN apt-get -y install nano
RUN apt-get -y install grep
RUN touch /var/log/cron.log

COPY kore-user-4 /etc/vpnc/kore-user-4

ADD vpn-login-cron /etc/cron.d/vpn-login-cron
RUN chmod 0644 /etc/cron.d/vpn-login-cron

#RUN crontab <(echo '*/5 * * * * /sbin/ifconfig | /bin/grep '^tun0' 1>/dev/null; if [ $? -ne 0 ]; then /usr/sbin/vpnc-connect kore-user-4; fi')

CMD cron && bash

#RUN bash

#ENTRYPOINT ["bash"]
