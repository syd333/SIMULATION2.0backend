class AddCountryToMisses < ActiveRecord::Migration[6.1]
  def change
    add_column :misses, :country, :string
  end
end
