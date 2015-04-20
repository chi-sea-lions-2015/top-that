class CreatePrivateArenas < ActiveRecord::Migration
  def change
    create_table :private_arenas do |t|
      t.belongs_to :challenger_video
      t.belongs_to :challengee_video
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
