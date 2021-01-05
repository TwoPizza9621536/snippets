---
layout: page
permalink: /C
title: C
---

# C

---

For the C programing language here are the latest snippets.

<ul>
  {% for C in site.Cfiles %}
    <li>
      [{{ C.name }}]({{ C.path }})
    </li>
  {% endfor %}
</ul>
