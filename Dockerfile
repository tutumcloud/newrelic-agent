FROM progrium/busybox
MAINTAINER support@tutum.co

ENV NEW_RELIC_LICENSE_KEY **CHANGE_ME**
ENV VERSION 2.1.0.124

ADD https://download.newrelic.com/server_monitor/release/newrelic-sysmond-$VERSION-linux.tar.gz /tmp/
RUN gunzip -c /tmp/newrelic-sysmond-$VERSION-linux.tar.gz | tar xf - -C /tmp && \
	mv /tmp/newrelic-sysmond-$VERSION-linux /newrelic && \
	mkdir -p /etc/newrelic && \
	mv /newrelic/nrsysmond.cfg /etc/newrelic/nrsysmond.cfg
ADD run.sh /
CMD ["/run.sh"]