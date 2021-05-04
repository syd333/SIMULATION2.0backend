class RemoveCityFromMisses < ActiveRecord::Migration[6.1]
  def change
    remove_column :misses, :city, :string
  end
end
