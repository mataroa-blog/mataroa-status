---
title: Unplanned outage
date: 2021-12-08 14:43:00
# Possible severity levels: down, disrupted, notice
severity: down
resolved: true
resolvedWhen: 2021-12-08 14:59:00
affected:
  - mataroa.blog
section: issue
---

Unfortunately, today we had our first unplanned outage.

We use [certbot](https://certbot.eff.org/) for TLS certificate generation, and while the date for
renewal was approaching the certificate could not refresh property.

The problem was with certbot and Python. certbot could not execute because of some linkage problem
with the `cryptography` Python package. Upgrading certain packages and re-installing certbot
seemed to fix the problem.

After solving this though, then there was a second issue in which Caddy could not load
the new certificate due to a permissions error.

Eventually all permissions were fixed, all packages updated, and Caddy started successfully,
yet the cause of the original error remains unknown and further research is required.
