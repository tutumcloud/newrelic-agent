# tutum/newrelic-agent

[![Deploy to Tutum](https://s.tutum.co/deploy-to-tutum.svg)](https://dashboard.tutum.co/stack/deploy/)

Dockerized version of [New Relic's Server Monitoring agent](https://docs.newrelic.com/docs/servers/new-relic-servers-linux/getting-started/new-relic-servers-linux)

## Supported metrics

Current version supports the following metrics:

Metric | Supported locally? | Supported in Tutum?
------ | ------------------ | -------------------
CPU | **YES** | **YES**
Memory | **YES** | **YES**
Processes | **YES** | **YES**
Network | **YES** | **YES**
Disks | NO | NO
Virtualization | **YES** | **YES**


## Usage

	docker-compose run -d -e NEW_RELIC_LICENSE_KEY=<LICENSE> newrelic

replacing `<LICENSE>` with the 40 character license found in your account settings


## License

New Relic's Server Monitoring agent has a propietary license included in [LICENSE](./LICENSE)
