import factory
from django.contrib.auth.models import User

from apps.blog.models import Post


class UserFactory(factory.django.DjangoModelFactory):
    class Meta:
        model = User

    username = "test"
    password = "test"
    is_superuser = True
    is_staff = True


class PostFactory(factory.django.DjangoModelFactory):
    class Meta:
        model = Post

    title = "Title Two"
    subtitle = "SubTitle Two"
    slug = "title-two"
    author = factory.SubFactory(UserFactory)
    content = "content two"
    status = "draft"
