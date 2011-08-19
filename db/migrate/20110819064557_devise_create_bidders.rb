class DeviseCreateBidders < ActiveRecord::Migration
  def self.up
    create_table(:bidders) do |t|
      t.string :name
      t.string :phone
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :bidders, :email,                :unique => true
    add_index :bidders, :reset_password_token, :unique => true
    # add_index :bidders, :confirmation_token,   :unique => true
    # add_index :bidders, :unlock_token,         :unique => true
    # add_index :bidders, :authentication_token, :unique => true
  end

  def self.down
    drop_table :bidders
  end
end
