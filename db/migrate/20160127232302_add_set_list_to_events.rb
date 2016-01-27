class AddSetListToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :set_list_start_time, :time
  	add_column :events, :set_list_end_time, :time
  end
end
