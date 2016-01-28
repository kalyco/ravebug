class AddColumnsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string, null: false
  	add_column :users, :last_name, :string, null: false
  	add_column :users, :moniker, :string
  	add_column :users, :status, :integer, default: 0
  end
end
