module Mutations
  class UpdateUser < BaseMutation
    argument :id, ID, required:true
    argument :name, String, required: true
    argument :email, String, required: true
    argument :team, String, required: true
      
    field :user, Types::UserType, null: false
    field :errors, [String], null: false
    def resolve(id:, name:, email:, team:)
      user = User.find(id)
      user.update!( name: name, email: email, team: team)
      if(user.save)
        {
          user: user,
          errors: []
        }
      else
        {
          user: nil,
          errors: user.errors.full_messages
        }
      end
    end
  end
end
