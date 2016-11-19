class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.references :user, foreign_key: true
      t.references :availability, foreign_key: true
      t.float :bid
      t.boolean :isAccepted

      t.timestamps
    end
  end
end
