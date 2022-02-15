class CreateFoodItemMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :food_item_meals do |t|
      t.belongs_to :food_item
      t.belongs_to :meal

      t.timestamps
    end
  end
end
