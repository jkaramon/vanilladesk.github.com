---
layout: rss-feed
---
<?xml version="1.0" encoding="UTF-8"?>
<rss version="2.0">
<channel>
<title>{{ site.rss.name }}</title>
<description>{{ site.rss.description }}</description>
<link>{{ site.url }}</link>
{% for post in site.posts limit:10 %}
<item>
<title>{{ post.title }}</title>
<description>{{ post.content | xml_escape }}</description>
<published>{{ post.date }}</published>
<link>{{ site.rss.url }}{{ post.url }}</link>
</item>
{% endfor %}
</channel>
</rss>

