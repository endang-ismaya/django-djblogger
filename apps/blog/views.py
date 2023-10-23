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
    related = Post.objects.filter(author=post.author)[:5]
    context = {"post": post, "related": related}
    return render(request, "blog/single.html", context)


class TagListView(ListView):
    model = Post
    paginate_by = 10
    context_object_name = "posts"

    def get_queryset(self):
        posts = Post.objects.filter(tags__slug__in=[self.kwargs["tag"]])
        print(posts)
        return posts

    def get_template_names(self):
        if self.request.htmx:
            return "components/post-list-elements-tags.html"
        return "blog/tags.html"

    def get_context_data(self, **kwargs):
        context = super(TagListView, self).get_context_data(**kwargs)
        context["tag"] = self.kwargs["tag"]
        return context
