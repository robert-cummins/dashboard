class Mutations::UpdateSkill < Mutations::BaseMutation
  argument :id, ID, required:true
  argument :name, String, required: true
  argument :category, String, required: true
  argument :rating, Integer, required: true
    
  field :skill, Types::SkillType, null: false
  field :errors, [String], null: false
  def resolve(id:, name:, category:, rating:)
    skill = Skill.find(id)
    skill.update!( name: name, category: category, rating: rating)
    if(skill.save)
      {
        skill: skill,
        errors: []
      }
    else
      {
        user: nil,
        errors: skill.errors.full_messages
      }
    end
  end
end

