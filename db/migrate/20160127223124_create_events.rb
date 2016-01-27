class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :title, null: false
    	t.string :description, null: false
    	t.integer :event_level, null: false
    	t.datetime :start_time, null: false
    	t.datetime :end_time, null: false
    	t.boolean :open, default: true
    	t.belongs_to :crew, index: true

    	t.timestamps
    end
  end
end
