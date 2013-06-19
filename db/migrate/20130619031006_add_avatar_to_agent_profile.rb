class AddAvatarToAgentProfile < ActiveRecord::Migration
  def change
    add_column :agent_profiles, :avatar, :string
  end
end
