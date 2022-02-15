# frozen_string_literal: true

# FoodItemCombo == meal
class Meal < ApplicationRecord
  enum name: %i[breakfast lunch dinner]

  has_many :daily_plan_meals
  has_many :daily_plans, through: :daily_plan_meals
  has_many :food_item_meals
  has_many :food_items, through: :food_item_meals

  scope :breakfasts, -> { where(name: names[:breakfast]) }
  scope :lunches, -> { where(name: names[:lunch]) }
  scope :dinners, -> { where(name: names[:dinner]) }
end
