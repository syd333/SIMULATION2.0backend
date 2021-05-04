class AddLongToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :long, :decimal
  end
end
