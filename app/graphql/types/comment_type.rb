Types::CommentInputType = GraphQL::InputObjectType.define do
  name 'CommentInputType'
  description 'All properties of a comment'

  argument :post_id, types.ID
  argument :body,    types.String
end

Types::CommentType = GraphQL::ObjectType.define do
  name 'CommentType'
  description 'One comment to a blog post'

  field :id,   !types.ID
  field :body,  types.String

  field :errors, types[types.String], "Validation errors" do
    resolve ->(o, _, _) { o.errors.to_a }
  end
end