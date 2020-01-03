FROM open-liberty
USER root
RUN ln -s /opt/ol/wlp/usr/servers /servers
COPY target/liberty/wlp/usr/servers /servers 
#ADD deployment/rest.war /servers/defaultServer/apps
USER 1001
ENTRYPOINT ["/opt/ol/wlp/bin/server", "run"]
CMD ["defaultServer"]
