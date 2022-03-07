# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

exit if Rails.env.production?

include FactoryBot::Syntax::Methods

puts "Cleaning database..."
DatabaseCleaner.clean_with :truncation
DatabaseCleaner.strategy = :transaction
DatabaseCleaner.clean

create_list(:daily_plan, 10, :with_meals)

puts "*** SUMMARY: ***"
puts "- #{DailyPlan.count} Daily plans created!"
puts "- #{Meal.count} Meals created!"
puts "- #{FoodItem.count} FoodItems created!"
