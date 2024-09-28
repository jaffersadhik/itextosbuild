FROM debian:bullseye-slim

WORKDIR /jaffer
COPY postfix-preseed.cfg .

RUN debconf-set-selections < postfix-preseed.cfg

RUN apt-get update && apt install -y postfix opendkim opendkim-tools


COPY main.cf /etc/postfix/main.cf
COPY opendkim.conf /etc/opendkim.conf
COPY KeyTable /etc/opendkim/KeyTable
COPY SigningTable /etc/opendkim/SigningTable
COPY trusted-hosts /etc/opendkim/TrustedHosts

CMD ["sh", "-c", "service postfix start && service opendkim start && tail -f /var/log/mail.log"]

