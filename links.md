---
layout: page
title: Bookmarks
permalink: /bookmarks/
---

Bookmarks!

{% for post in site.posts %}
  {% if post.categories contains 'code' %}
    {{ post.title }}
  {% endif %}
{% endfor %}
