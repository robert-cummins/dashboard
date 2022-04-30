module Mutations
  class DeleteUser < BaseMutation
    argument :id, ID, required:true

    field :message, String
    def resolve(id:)
      user = User.find(id)
      user.destroy!
      {
        message: "User is destroyed"
      }
    end
  end
end
