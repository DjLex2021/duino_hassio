ARG BUILD_FROM
FROM $BUILD_FROM

ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 python3-dev && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools


COPY Translations.json /
COPY PC_Miner.py /
COPY run.sh /

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
