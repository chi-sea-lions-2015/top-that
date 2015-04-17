class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :voter, index: true, foreign_key: true
      t.belongs_to :video, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
