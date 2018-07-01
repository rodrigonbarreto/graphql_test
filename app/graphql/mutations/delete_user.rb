class Mutations::DeleteUser < GraphQL::Function

  argument :id, !types.ID

  type types.Boolean

  def call(obj, args, cts)
    user = User.where(id: args[:id]).first
    !!(user.try :destroy)
  end
end