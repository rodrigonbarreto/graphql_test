# examples of query with grpathql 

* run rake db:drop db:create db:migrate db:seed

# find user by id
```
{
  user(id:1) {
    first_name
    address
    posts {
      id
      body
      user {
        id
      }
      comments {
        id
        body
      }
    }
  }
}
```

# For query variables try

```
{
  "user": {
    "first_name": "Rodrigo",
    "last_name": "Barreto"
  }
}

```

#create a new user
```
mutation createUser($user: UserInputType){
 createUser(user: $user) {
	#return  message errors in array
  errors
  first_name
  last_name
 }
}

```

# update user
```
mutation updateUser($user: UserInputType){
 updateUser(id: 1, user: $user) {
	#return  message errors in array
  errors
  id
  first_name
  last_name
 }
}
```

# delete user

```
mutation {
 deleteUser(id: 1) 
}

```

# get All users
```
{
 allUsers {
   id
   first_name
  posts {
    id
    body
  }
 }
}
```