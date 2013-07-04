class User < ActiveRecord::Base
  has_many :skills, through: :proficiencies
  has_many :proficiencies
  def proficiency_for(skill)
    proficiency = Proficiency.where(skill_id: skill.id, user_id: self.id)
    return proficiency.first.rating.to_i
  end

  def set_proficiency_for(skill, rating)
    proficiency = self.proficiencies.find_or_create_by_skill_id(skill.id)
    proficiency.rating = rating
    proficiency.save
  end
end
