class CreateFoodItems < ActiveRecord::Migration[6.0]
  def change
    create_table :food_items do |t|
      t.string :name, null: false
      t.boolean :refrigerated, default: false
      t.boolean :in_kitchen, default: false
      t.integer :item_type, default: 0

      t.timestamps
    end
  end
end
