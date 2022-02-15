# frozen_string_literal: true

class FoodItemMeal < ApplicationRecord
  belongs_to :food_item
  belongs_to :meal
end
