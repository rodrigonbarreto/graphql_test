class Mutations::DeletePost < GraphQL::Function

  argument :id, !types.ID

  type types.Boolean

  def call(obj, args, cts)
    post = Post.where(id: args[:id]).first
    !!(post.try :destroy)
  end
end