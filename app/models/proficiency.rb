class Proficiency < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill
  validates_uniqueness_of :id, scope: [:user_id, :skill_id]
end
