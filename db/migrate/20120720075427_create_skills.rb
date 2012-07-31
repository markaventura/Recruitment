class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :user_id
      t.string :skillsandexpertise

      t.timestamps
    end
  end
end
