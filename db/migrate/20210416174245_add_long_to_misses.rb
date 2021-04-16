class AddLongToMisses < ActiveRecord::Migration[6.1]
  def change
    add_column :misses, :long, :decimal
  end
end
