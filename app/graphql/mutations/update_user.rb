class Mutations::UpdateUser < GraphQL::Function

  argument :id, !types.ID
  argument :user, Types::UserInputType

  type Types::UserType

  def call(obj, args, cts)
    user = User.where(id: args[:id]).first
    user.try :update, args[:user].to_h
    user
  end
end