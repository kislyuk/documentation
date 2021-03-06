---
categories:
  - log collection
  - web 
doc_link: https://docs.datadoghq.com/integrations/uwsgi/
description: Collect uWSGI logs in order to track requests per second, bytes served, request status, and more.
short_description: Collect uWSGI logs in order to track requests per second, bytes served, request status, and more.
ddtype: check
git_integration_title: uwsgi
has_logo: true
integration_title: uwsgi
is_public: true
kind: integration
name: uwsgi
public_title: Integration Datadog-uWSGI
short_description: 
supported_os:
- linux
- mac_os
- windows
---

## Overview

Collect uWSGI logs in order to track requests per second, bytes served, request status (2xx, 3xx, 4xx, 5xx), service uptime, slowness, and more.

## Setup

### Installation

[Install the agent][1] on the instance that runs the uWSGI server.

### Configuration

By default uWSGI server logs to stdout. Run the following command to start logging to a file or follow [uWSGI instructions to log to a file][2]:

```
uwsgi --socket :3031 --logger file:logfile=/var/log/uwsgi/uwsgi.log,maxsize=2000000
```

Create the `uwsgi.d/conf.yaml` file in the root of your Agent's configuration directory.

#### Log Collection

**Available for Agent version >6.0**

Collecting logs is disabled by default in the Datadog Agent. Enable it in your `datadog.yaml` file with:

```
logs_enabled: true
```

Then add this configuration block to your `uwsgi.d/conf.yaml` file to start collecting your logs:

```
logs:
  - type: file
    path: /var/log/uwsgi/uwsgi.log
    service: <MY_APPLICATION>
    source: uwsgi
```

Finally, [restart the agent][3].

By default the Datadog-uWSGI integration supports the [default uWSGI log format][4] and the [Apache-like combined format][5].

## Troubleshooting

Need help? Contact [Datadog Support][6].

[1]: https://app.datadoghq.com/account/settings#agent
[2]: https://uwsgi-docs.readthedocs.io/en/latest/Logging.html#logging-to-files
[3]: https://docs.datadoghq.com/agent/faq/agent-commands/#start-stop-restart-the-agent
[4]: https://uwsgi-docs.readthedocs.io/en/latest/LogFormat.html#uwsgi-default-logging
[5]: https://uwsgi-docs.readthedocs.io/en/latest/LogFormat.html#apache-style-combined-request-logging
[6]: https://docs.datadoghq.com/help/
