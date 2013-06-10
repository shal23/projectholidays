class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
