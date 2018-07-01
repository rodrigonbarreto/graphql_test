Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createUser, function: Mutations::CreateUser.new
  field :updateUser, function: Mutations::UpdateUser.new
  field :deleteUser, function: Mutations::DeleteUser.new

  field :createPost, function: Mutations::CreatePost.new
  field :updatePost, function: Mutations::UpdatePost.new
  field :deletePost, function: Mutations::DeletePost.new

  field :createComment, function: Mutations::CreateComment.new
  field :updateComment, function: Mutations::UpdateComment.new
  field :deleteComment, function: Mutations::DeleteComment.new
end
