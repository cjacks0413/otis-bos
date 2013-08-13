class CreateRestrooms < ActiveRecord::Migration
  def change
    create_table :restrooms do |t|
      t.string :name
      t.string :line1
      t.string :line2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
