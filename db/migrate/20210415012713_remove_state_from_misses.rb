class RemoveStateFromMisses < ActiveRecord::Migration[6.1]
  def change
    remove_column :misses, :state, :string
  end
end
