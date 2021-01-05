{% for post in site.posts %}
  {% if post.category == page.title %}
    [{{ post.title }}]({{ post.url }})
  {% endif %}
{% endfor %}
