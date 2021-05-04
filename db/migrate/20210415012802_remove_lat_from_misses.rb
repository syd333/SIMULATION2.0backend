class RemoveLatFromMisses < ActiveRecord::Migration[6.1]
  def change
    remove_column :misses, :lat, :decimal
  end
end
