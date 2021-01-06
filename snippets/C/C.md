---
layout: page
title: c
permalink: /C.html
---

# C

---

For the C programing language here are the latest snippets.

{% include lang.html %}
{% for category in site.categories %}
  <ul>
      {% for post in category[page.title] %}
        <li><a href="{{ post.url }}">{{ post.title }}</a></li>
      {% endfor %}
  </ul>
{% endfor %}

