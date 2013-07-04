class Skill < ActiveRecord::Base
  has_many :users, through: :proficiencies
  has_many :proficiencies
  validates :name, uniqueness: true
  def user_with_proficiency(rating)
    proficiency = Proficiency.find_by_rating(rating.to_s)
    proficiency.user
  end
end
