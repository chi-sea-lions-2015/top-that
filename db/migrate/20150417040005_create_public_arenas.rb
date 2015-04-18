class CreatePublicArenas < ActiveRecord::Migration
  def change
    create_table :public_arenas do |t|
      t.belongs_to :challenger_video, index: true, foreign_key: true
      t.belongs_to :challengee_video, index: true, foreign_key: true
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
