class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.boolean :isliked, default: false
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
