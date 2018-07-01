Types::PostInputType = GraphQL::InputObjectType.define do
  name 'PostInputType'
  description 'All properties of a post'

  argument :user_id, types.ID
  argument :body,    types.String
end

Types::PostType = GraphQL::ObjectType.define do
  name 'PostType'
  description 'One blog post'

  field :id,   !types.ID
  field :body,  types.String

  field :user, Types::UserType

  field :comments, types[Types::CommentType], "All the comments to a post"

  field :errors, types[types.String], "Validation errors" do
    resolve ->(o, _, _) { o.errors.to_a }
  end
end