FROM debian:stretch-slim

RUN addgroup --gid 1000 bind \
    && adduser --disabled-password --home /data --no-create-home --system -q --uid 1000 --ingroup bind bind \
    && mkdir /data \
	&& chown bind:bind /data

RUN apt-get update && apt-get install -y --no-install-recommends \
	bind9  dnsutils \
	&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
	

ADD docker_create_folder.sh /docker_create_folder.sh
RUN chmod +x docker_create_folder.sh
CMD ["/docker_create_folder.sh"]

EXPOSE 53/tcp
EXPOSE 53/udp
EXPOSE 953/tcp
EXPOSE 953/udp

ADD docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD service bind9 restart && tail -F /var/log/bind/bind.log
