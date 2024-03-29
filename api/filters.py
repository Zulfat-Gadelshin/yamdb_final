import django_filters

from .models import Title


class TitleFilter(django_filters.FilterSet):
    genre = django_filters.CharFilter(field_name='genre__slug',)
    category = django_filters.CharFilter(field_name='category__slug',)
    name = django_filters.CharFilter(field_name='name', lookup_expr='contains')
    year = django_filters.CharFilter(field_name='year',)

    class Meta:
        model = Title
        fields = ['name', 'year', 'genre', 'category', ]
