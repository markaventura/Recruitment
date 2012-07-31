class CreateOthereducations < ActiveRecord::Migration
  def change
    create_table :othereducations do |t|
      t.string :user_id
      t.string :schoolname
      t.string :course
      t.string :dateattendedfrom
      t.string :dateattendedto
      t.string :monthfrom
      t.string :monthto

      t.timestamps
    end
  end
end
