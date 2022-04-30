module Types
  class MutationType < Types::BaseObject
    field :delete_user, mutation: Mutations::DeleteUser
    field :delete_skill, mutation: Mutations::DeleteSkill
    field :update_user, mutation: Mutations::UpdateUser
    field :create_user, mutation: Mutations::CreateUser
    field :create_skill, mutation: Mutations::CreateSkill
    field :update_skill, mutation: Mutations::UpdateSkill
  end
end
