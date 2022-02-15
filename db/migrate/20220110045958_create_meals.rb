class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.integer :name
      t.string :notes

      t.timestamps
    end
  end
end
