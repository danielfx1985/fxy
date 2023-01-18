from import_export import resources
from .models import student_info

class student_info_resource(resources.ModelResource):
    class Meta:
        model = student_info
        field=('name','minzu','age')
