Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  # Users query
  field :user, Types::UserType do
    argument :id, types.ID
    resolve ->(_, a, _) { User.find(a[:id]) }
  end

  field :allUsers, types[Types::UserType] do
    description "Return all users"

    resolve -> (obj, args, ctx) { User.all }
  end
end
