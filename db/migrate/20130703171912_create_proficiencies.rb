class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.string :rating
      t.belongs_to :user
      t.belongs_to :skill
      t.timestamps
    end
  end
end
