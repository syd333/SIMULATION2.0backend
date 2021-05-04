class RemoveLongFromMisses < ActiveRecord::Migration[6.1]
  def change
    remove_column :misses, :long, :decimal
  end
end
