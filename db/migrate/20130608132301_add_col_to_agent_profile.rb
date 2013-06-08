class AddColToAgentProfile < ActiveRecord::Migration
  def change
    add_column :agent_profiles, :about, :text
  end
end
