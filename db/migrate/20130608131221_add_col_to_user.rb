class AddColToUser < ActiveRecord::Migration
  def change
    add_column :users, :agent, :boolean
  end
end
