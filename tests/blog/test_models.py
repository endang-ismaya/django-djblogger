import pytest

pytestmark = pytest.mark.django_db


class TestPostModel:
    def test_str_return(self, post_factory):
        post = post_factory()
        assert post.__str__() == "Title Two"

    def test_add_tag(self, post_factory):
        x = post_factory(title="test-post", tags="test-tag")
        assert x.tags.count() == 1
