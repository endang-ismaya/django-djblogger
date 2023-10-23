from django.urls import path

from apps.blog import views

urlpatterns = [
    path("", views.HomeView.as_view(), name="blog__home"),
    path("<slug:slug>", views.post_single, name="blog__single"),
]
