---
title: Unplanned outage
date: 2022-08-20 12:40:00
# Possible severity levels: down, disrupted, notice
severity: down
resolved: true
resolvedWhen: 2022-08-20 12:53:00
affected:
  - mataroa.blog
section: issue
---

Severe disruption of service due to disk space.

Steps taken:

* Reviewed log rotation for uWSGI, Caddy, journal, mailbox
* Doubled disk space
* Considering: OS-level alerts
