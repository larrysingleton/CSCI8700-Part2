class ChangeLocationToDouble < ActiveRecord::Migration[5.0]
  def change
    change_column :availabilities, :longitude, :float
    change_column :availabilities, :latitude, :float
  end
end
