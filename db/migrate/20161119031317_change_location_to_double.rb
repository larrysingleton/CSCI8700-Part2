class ChangeLocationToDouble < ActiveRecord::Migration[5.0]
  def change
    change_column :availabilities, :longitude, :double
    change_column :availabilities, :latitude, :double
  end
end
