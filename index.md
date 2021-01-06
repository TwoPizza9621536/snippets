---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
permalink: /index.html
---

# Welcome

---

This is a place where the snippets are stored for my blogs.

## Languages

Here all the languages in the repo.

---

{% for category in site.categories %}
  <h3>{{ category[0] }}</h3>
  <ul>
    {% for post in category[1] %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}


## License

---

The snippets are license under the MIT license. [Click here]({{ "/about" | relative_url }}) for more info.
