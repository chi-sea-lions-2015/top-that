class CreateUserConnections < ActiveRecord::Migration
  def change
    create_table :user_connections do |t|
      t.belongs_to :inviter, index: true, foreign_key: true
      t.belongs_to :invitee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
