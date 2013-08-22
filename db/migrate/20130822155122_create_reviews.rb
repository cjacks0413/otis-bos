class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :author
      t.text :content
      t.integer :restroom_id

      t.timestamps
    end
    add_index :reviews, [:restroom_id, :created_at]
  end
end
