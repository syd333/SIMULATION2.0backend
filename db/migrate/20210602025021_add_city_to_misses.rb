class AddCityToMisses < ActiveRecord::Migration[6.1]
  def change
    add_column :misses, :city, :string
  end
end
