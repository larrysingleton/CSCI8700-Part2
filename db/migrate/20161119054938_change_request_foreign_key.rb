class ChangeRequestForeignKey < ActiveRecord::Migration[5.0]
  def change
    rename_column :requests, :availabilities_id, :availability_id
  end
end
