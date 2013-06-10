class AddLatitudeLongitudeToAttraction < ActiveRecord::Migration
  def change
    add_column :attractions, :latitude, :float
    add_column :attractions, :longitude, :float
    add_column :attractions, :gmaps, :boolean
  end
end
