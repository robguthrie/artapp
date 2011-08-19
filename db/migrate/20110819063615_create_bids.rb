class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :user_id
      t.integer :artwork_id
      t.float :amount

      t.timestamps
    end
  end
end
