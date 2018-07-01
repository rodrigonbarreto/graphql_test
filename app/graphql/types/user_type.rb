Types::UserInputType = GraphQL::InputObjectType.define do
  name 'UserInputType'
  description 'All properties of a user'

  argument :first_name, types.String
  argument :last_name,  types.String
  argument :street,     types.String
  argument :number,     types.Int
  argument :postcode,   types.String
  argument :city,       types.String
  argument :country,    types.String
end


Types::UserType = GraphQL::ObjectType.define do
  name 'UserType'

  field :id, !types.ID
  field :first_name,  types.String
  field :last_name,   types.String
  field :street,      types.String
  field :number,      types.Int
  field :postcode,    types.String
  field :city,        types.String
  field :country,     types.String

  field :address, types.String do
    description "A user's full address"
    resolve ->(o, _, _) { "#{o.street} #{o.number.to_s}, #{o.postcode} #{o.city}, #{o.country}" }
  end

  field :posts, types[Types::PostType],  "All posts by this user"

  field :errors, types[types.String], "Validation errors" do
    resolve ->(o, _, _) { o.errors.to_a }
  end
end