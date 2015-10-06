---
layout: page
title: Design
permalink: /design/
---

Design!

{% for post in site.posts %}
{% if post.categories contains 'design' %}
{{ post.title }}
{% endif %}
{% endfor %}
