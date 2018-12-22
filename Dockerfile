FROM debian:stretch-slim

RUN addgroup --gid 1000 bind \
    && adduser --disabled-password --home /data --no-create-home --system -q --uid 1000 --ingroup bind bind \
    && mkdir /data \
	&& chown bind:bind /data

RUN apt-get update && apt-get install -y --no-install-recommends \
	bind9 \
	&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
	
ADD 
RUN chmod +x 