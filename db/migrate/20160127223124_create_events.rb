class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :title
    	t.string :description
    	t.integer :event_level
    	t.datetime :start_time
    	t.datetime :end_time
    	t.boolean :open, default: true
    	t.belongs_to :crew, index: true

    	t.timestamps
    end
  end
end
