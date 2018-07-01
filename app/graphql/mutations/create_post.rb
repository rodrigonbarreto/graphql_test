class Mutations::CreatePost < GraphQL::Function
  argument :post, Types::PostInputType

  type Types::PostType

  def call(obj, args, cts)
    Post.create args[:post].to_h
  end
end