class Mutations::DeleteComment < GraphQL::Function

  argument :id, !types.ID

  type types.Boolean

  def call(obj, args, cts)
    comment = Comment.where(id: args[:id]).first
    !!(comment.try :destroy)
  end
end