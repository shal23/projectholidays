class CreateAgentProfiles < ActiveRecord::Migration
  def change
    create_table :agent_profiles do |t|
      t.string :name
      t.string :company_name
      t.string :company_address
      t.string :company_url
      t.string :image

      t.timestamps
    end
  end
end
