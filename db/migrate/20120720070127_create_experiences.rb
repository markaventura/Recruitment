class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :user_id
      t.string :location
      t.string :timeperiodfrom
      t.string :timeperiodfromyear
      t.string :timeperiodto
      t.string :timeperiodtoyear
      t.string :companyname
      t.string :description

      t.timestamps
    end
  end
end
