---
layout: page
permalink: /C%2B%2B
title: C++
---

# C++

---

For the C++ programing language here are the latest snippets.

<ul>
  {% for CPP in site.CPPfiles %}
    <li>
      [{{ CPP.name }}]({{ CPP.path }})
    </li>
  {% endfor %}
</ul>
