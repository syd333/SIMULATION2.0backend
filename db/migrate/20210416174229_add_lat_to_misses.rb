class AddLatToMisses < ActiveRecord::Migration[6.1]
  def change
    add_column :misses, :lat, :decimal
  end
end
