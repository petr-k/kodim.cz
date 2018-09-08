FROM alpine:3.7

COPY requirements.txt /requirements.txt

RUN apk update && apk upgrade && \
    apk add --no-cache tini nginx python3 uwsgi-python3 && \
    pip3 install --upgrade pip setuptools && \
    pip3 install -r requirements.txt && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
    rm -r /root/.cache

# application folder
ENV APP_DIR /app

# app dir
RUN mkdir ${APP_DIR} && \
    chown -R nginx:nginx ${APP_DIR} && \
    chmod 777 /run/ -R && \
    chmod 777 /root/ -R

WORKDIR ${APP_DIR}
EXPOSE 80

COPY nginx.conf /etc/nginx/nginx.conf
COPY uwsgi.ini /uwsgi.ini
COPY entrypoint.sh /entrypoint.sh

# execute start up script
ENTRYPOINT ["/sbin/tini", "--", "/entrypoint.sh"]
CMD ["uwsgi", "--ini", "/uwsgi.ini"]
