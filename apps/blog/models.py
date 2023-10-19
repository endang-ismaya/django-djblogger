from django.contrib.auth.models import User
from django.db import models


class Post(models.Model):
    options = (
        ("draft", "Draft"),
        ("publish", "Published"),
    )

    title = models.CharField(max_length=250)
    subtitle = models.CharField(max_length=100)
    slug = models.SlugField(max_length=250)
    author = models.ForeignKey(User, on_delete=models.CASCADE, related_name="post_author")
    content = models.TextField()
    status = models.CharField(max_length=10, choices=options, default="draft")
    created_at = models.DateTimeField(auto_now_add=True, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=False)

    class Meta:
        ordering = ("-created_at",)

    def __str__(self) -> str:
        return self.title