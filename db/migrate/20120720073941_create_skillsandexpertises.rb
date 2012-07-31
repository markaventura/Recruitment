class CreateSkillsandexpertises < ActiveRecord::Migration
  def change
    create_table :skillsandexpertises do |t|
      t.string :user_id
      t.string :skillsandexperties

      t.timestamps
    end
  end
end
