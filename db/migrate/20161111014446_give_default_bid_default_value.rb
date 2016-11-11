class GiveDefaultBidDefaultValue < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :defaultBid, :decimal, :default => 1.00
  end
end
