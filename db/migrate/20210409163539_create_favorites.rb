class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.boolean :like
      t.references :user_id, null: false, foreign_key: true
      t.references :miss_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
