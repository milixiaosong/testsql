FROM mysql:5.7

ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

COPY setup.sh /mysql/setup.sh
COPY pboot.sql /mysql/pboot.sql
RUN chmod 777 -Rf /mysql/setup.sh

CMD ["sh", "/mysql/setup.sh"]
EXPOSE 3306