class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :user_id
      t.string :schoolname
      t.string :degree
      t.string :fieldofstudy
      t.string :datesattendedfrom
      t.string :datesattendedto

      t.timestamps
    end
  end
end
