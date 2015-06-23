class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :user_id
      t.integer :charity_id
      t.float :amount

      t.timestamps null: false
    end
  end
end
