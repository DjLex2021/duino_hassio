ARG BUILD_FROM
FROM $BUILD_FROM

RUN \
  apk add --no-cache \
    python3 \
	python3-dev \
	python3-pip


COPY Translations.json /
COPY PC_Miner.py /
COPY run.sh /

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
