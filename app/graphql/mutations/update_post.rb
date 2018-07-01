class Mutations::UpdatePost < GraphQL::Function

  argument :id, !types.ID
  argument :post, Types::PostInputType

  type Types::PostType

  def call(obj, args, cts)
    post = Post.where(id: args[:id]).first
    post.try :update, args[:post].to_h
    post
  end
end