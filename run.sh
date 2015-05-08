#!/bin/sh
set -e

/newrelic/scripts/nrsysmond-config --set license_key=$NEW_RELIC_LICENSE_KEY
for folder in lib lib64 bin usr etc var tmp newrelic; do
	mkdir -p /hostfs/$folder && mount --rbind /$folder /hostfs/$folder
done
exec chroot /hostfs /newrelic/daemon/nrsysmond.x64 -c /etc/newrelic/nrsysmond.cfg -l /dev/stdout -f