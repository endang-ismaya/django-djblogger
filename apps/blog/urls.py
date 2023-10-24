from django.urls import path

from apps.blog import views

urlpatterns = [
    path("", views.HomeView.as_view(), name="blog__home"),
    path("search/", views.PostSearchView.as_view(), name="blog__search"),
    path("<slug:slug>", views.post_single, name="blog__single"),
    path("tags/<slug:tag>", views.TagListView.as_view(), name="blog__by_tag"),
]
