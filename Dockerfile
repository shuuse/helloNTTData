FROM alpine:3.3
MAINTAINER Simen Huuse - itelligence // Thanks to Alex Bordei - Bigstep Inc.

run apk add --update darkhttpd && rm -rf /var/cache/apk/*

ADD index.html /var/www/localhost/htdocs/index.html
ADD entrypoint.sh /entrypoint.sh
ADD sapcloudplatform.png /var/www/localhost/htdocs/sapcloudplatform.png


EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
