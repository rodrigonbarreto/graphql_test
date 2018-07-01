# Examples of query with GraphQl 

* ruby version : ruby 2.4.1
* Rails version  5.1.4

* I did this simple test project with Rails and GraphQl, to see how GraphQl works :D

* first run
 ``` 
  rake db:drop db:create db:migrate db:seed
 ```

# Find user by id
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

# Create a new user
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

# Update user
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

# Delete user

```
mutation {
 deleteUser(id: 1) 
}

```

# Get All users
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