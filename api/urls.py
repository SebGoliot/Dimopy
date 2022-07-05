from django.urls import include, path

from api.views.interactions import interactions

urlpatterns = [
    path("interactions/", interactions, name="interactions"),
    path("api-auth/", include("rest_framework.urls", namespace="rest_framework")),
]
