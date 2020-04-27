from django.db import models
from django.contrib.auth.models import User

class UserInfoManager(models.Manager):
    def create_user_info(self, username, password, info):
        user = User.objects.create_user(username=username,
                                    password=password)
        userinfo = self.create(user=user,info=info)
        return userinfo
