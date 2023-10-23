from django.contrib import admin

from apps.blog.models import Post


class PostAdmin(admin.ModelAdmin):
    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()
    list_display = ("title", "status", "author", "slug")
    ordering = ("-created_at",)


admin.site.register(Post, PostAdmin)
