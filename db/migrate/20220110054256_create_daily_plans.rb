class CreateDailyPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_plans do |t|
      t.date :date
      t.string :notes

      t.timestamps
    end

    create_table :daily_plans_meals, id: false do |t|
      t.belongs_to :meal
      t.belongs_to :daily_plan
    end
  end
end
