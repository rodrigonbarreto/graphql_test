class Mutations::CreateComment < GraphQL::Function
  argument :comment, Types::CommentInputType

  type Types::CommentType

  def call(obj, args, cts)
    Comment.create args[:comment].to_h
  end
end