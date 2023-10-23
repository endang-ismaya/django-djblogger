from django.shortcuts import get_object_or_404, render
from django.views.generic import ListView

from apps.blog.models import Post


class HomeView(ListView):
    model = Post
    context_object_name = "posts"
    paginate_by = 10

    def get_template_names(self) -> list[str]:
        if self.request.htmx:
            # print("htmx...")
            return "components/post-list-elements.html"

        return "blog/index.html"


def post_single(request, slug):
    post = get_object_or_404(Post, slug=slug, status="published")
    context = {"post": post}
    return render(request, "blog/single.html", context)
