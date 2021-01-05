{% for post in site.posts %}
  {% if post.category == page.title %}
    [{{ post.title }}]({{ post.url }})
    ---
    {{ post.excerpt }}
  {% endif %}
{% endfor %}
