FROM mysql:5.7

#ENV MYSQL_ALLOW_EMPTY_PASSWORD yes
ENV MYSQL_ROOT_PASSWORD Xrq871323093.
ENV MYSQL_DATABASE pboot

COPY setup.sh /mysql/setup.sh
COPY pboot.sql /mysql/pboot.sql
RUN service mysql start
#RUN mysql -uroot -pXrq871323093. pboot < /mysql/pboot.sql

CMD ["sh", "/mysql/setup.sh"]
EXPOSE 3306