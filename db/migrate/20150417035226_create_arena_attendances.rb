class CreateArenaAttendances < ActiveRecord::Migration
  def change
    create_table :arena_attendances do |t|
      t.belongs_to :private_arena, index: true, foreign_key: true
      t.belongs_to :attendee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
