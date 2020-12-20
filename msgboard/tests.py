def test_with_authenticated_client(client,
django_user_model):
 username = "admin"
 password = "123456"
 Django_user_model. \
 objects.create_user(username=username,
 password=password)
 # Use this method and assert response
 client.get(“”)
