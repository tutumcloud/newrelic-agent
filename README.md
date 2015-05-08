# tutum/newrelic-agent

[![Deploy to Tutum](https://s.tutum.co/deploy-to-tutum.svg)](https://dashboard.tutum.co/stack/deploy/)

Dockerized version of [New Relic's Server Monitoring agent](https://docs.newrelic.com/docs/servers/new-relic-servers-linux/getting-started/new-relic-servers-linux)

## Supported metrics

Current version only supports the following metrics:

Metric | Supported?
------ | ----------
CPU | **YES**
Memory | **YES**
Processes | **YES**
Network | NO: Container network interfaces are shown instead of the host's
Disks | NO: The host disk appears with the wrong mount points
Virtualization | NO: Docker is not yet supported in the latest stable release of the agent

## Usage

	docker run -d \
		--restart on-failure \
		--privileged \
		-v /var/run/docker.sock:/hostfs/var/run/docker.sock \
		-v /proc:/hostfs/proc \
		-v /dev:/hostfs/dev \
		-v /sys:/hostfs/sys \
		-e NEW_RELIC_LICENSE_KEY=<LICENSE> \
		-e HOSTNAME=$(hostname) \
		tutum/newrelic-agent

replacing `<LICENSE>` with the 40 character license found in your account settings


## License

New Relic's Server Monitoring agent has a propietary license included in [LICENSE](./LICENSE)
