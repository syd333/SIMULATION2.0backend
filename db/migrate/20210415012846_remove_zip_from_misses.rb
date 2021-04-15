class RemoveZipFromMisses < ActiveRecord::Migration[6.1]
  def change
    remove_column :misses, :zip, :integer
  end
end
