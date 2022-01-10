class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.integer :name
      t.string :notes

      t.timestamps
    end

    create_table :food_items_meals, id: false do |t|
      t.belongs_to :food_item
      t.belongs_to :meal
    end
  end
end
