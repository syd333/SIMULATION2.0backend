class CreateMisses < ActiveRecord::Migration[6.1]
  def change
    create_table :misses do |t|
      t.string :city
      t.integer :zip
      t.decimal :lat
      t.decimal :long
      t.string :title
      t.string :message
      t.references :user_id
      t.timestamps
    end
  end
end
