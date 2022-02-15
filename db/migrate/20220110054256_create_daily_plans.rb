class CreateDailyPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_plans do |t|
      t.date :date
      t.string :notes

      t.timestamps
    end
  end
end
