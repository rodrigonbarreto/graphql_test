class Mutations::CreateUser < GraphQL::Function
  argument :user, Types::UserInputType

  type Types::UserType

  def call(obj, args, cts)
    User.create args[:user].to_h
  end
end