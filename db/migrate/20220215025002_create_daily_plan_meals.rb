class CreateDailyPlanMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_plan_meals do |t|
      t.belongs_to :meal
      t.belongs_to :daily_plan

      t.timestamps
    end
  end
end
