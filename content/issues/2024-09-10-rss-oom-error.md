---
title: RSS out of memory error
date: 2024-09-10 13:44:00
# Possible severity levels: down, disrupted, notice
severity: down
resolved: true
resolvedWhen: 2024-07-11 17:12:00
affected:
  - mataroa.blog
section: issue
---

Hi there,

Due to certain limits surpassed, we faced an issue in which both CPU and memory load
would be through the roof when we would generate the RSS feed for certain large blogs.
This would cause the whole platform to be exceptionally slow and timeout.

We are now serving only the last 10 articles for each blog (in the rss endpoint) but we
will enforce stricter limits in the coming months.

Becoming more popular is cool but it becomes harder and harder to prevent abuse.
