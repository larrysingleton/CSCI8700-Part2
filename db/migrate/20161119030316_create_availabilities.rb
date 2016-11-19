class CreateAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities do |t|
      t.integer :longitude
      t.integer :latitude
      t.boolean :is_taken
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
