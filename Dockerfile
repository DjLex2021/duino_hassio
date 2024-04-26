ARG BUILD_FROM
FROM $BUILD_FROM

ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 python3-dev py3-pip && ln -sf python3 /usr/bin/python
RUN pip3 install --no-cache --upgrade --break-system-packages pip setuptools


COPY Translations.json /
COPY PC_Miner.py /
COPY run.sh /

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
