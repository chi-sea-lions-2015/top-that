class CreatePrivateArenas < ActiveRecord::Migration
  def change
    create_table :private_arenas do |t|
      t.belongs_to :challenger_video, index: true, foreign_key: true
      t.belongs_to :challengee_video, index: true, foreign_key: true
      t.integer :state [:open, :closed, :in_battle]

      t.timestamps null: false
    end
  end
end
