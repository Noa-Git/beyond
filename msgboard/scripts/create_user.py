from django.contrib.auth.models import User
from django.contrib.auth import get_user_model

users = get_user_model()
if not users.objects.filter(username='user1').exists():
    user = User.objects.create_user('user1', password='123456')
    user.is_staff = True
    user.save()
