class AddPasswordDigestToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :defaultBid, :boolean, :default => false
  end
end
