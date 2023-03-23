from django import template
from mezzanine.pages.models import Page

register = template.Library()

@register.s_tag
def directory_tree(page):
    children = Page.objects.filter(parent=page)
    return {"children": children}