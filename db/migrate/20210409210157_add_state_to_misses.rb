class AddStateToMisses < ActiveRecord::Migration[6.1]
  def change
    add_column :misses, :state, :string
  end
end
