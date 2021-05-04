class AddLatToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :lat, :decimal
  end
end
