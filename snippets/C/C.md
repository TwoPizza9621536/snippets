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
    {% if category[0] == page.title %}
      {% for post in category[1] %}
        <li><a href="{{ post.url }}">{{ post.title }}</a></li>
      {% endfor %}
    {endif}
  </ul>
{% endfor %}

