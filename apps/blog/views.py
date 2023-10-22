from django.views.generic import ListView

from apps.blog.models import Post


class HomeView(ListView):
    model = Post
    template_name = "blog/index.html"
    context_object_name = "posts"
