class CreateInboxes < ActiveRecord::Migration
  def change
    create_table :inboxes do |t|
      t.string :subject
      t.string :companyname
      t.string :location
      t.string :message
      t.string :user_id

      t.timestamps
    end
  end
end
