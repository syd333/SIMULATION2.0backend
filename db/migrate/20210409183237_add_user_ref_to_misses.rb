class AddUserRefToMisses < ActiveRecord::Migration[6.1]
  def change
    add_reference :misses, :user, null: false, foreign_key: true
  end
end
