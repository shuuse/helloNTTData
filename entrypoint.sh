#!/bin/sh

DOCUMENT_ROOT=/var/www/localhost/htdocs
LOG=/var/log/darkhttpd/access.log

/usr/bin/darkhttpd $DOCUMENT_ROOT --log $LOG --port 80 --no-server-id
