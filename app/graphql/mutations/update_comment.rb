class Mutations::UpdateComment < GraphQL::Function

  argument :id, !types.ID
  argument :comment, Types::CommentInputType

  type Types::CommentType

  def call(obj, args, cts)
    comment = Comment.where(id: args[:id]).first
    comment.try :update, args[:comment].to_h
    comment
  end
end