module Mutations
  class DeleteSkill < BaseMutation
    argument :id, ID, required:true

    field :message, String
    def resolve(id:)
      skill = Skill.find(id)
      skill.destroy!
      {
        message: "Skill is destroyed"
      }
    end
  end
end
