class CreateSummaries < ActiveRecord::Migration
  def change
    create_table :summaries do |t|
      t.string :professional
      t.string :user_id

      t.timestamps
    end
  end
end
