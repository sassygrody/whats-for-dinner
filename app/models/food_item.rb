# frozen_string_literal: true

class FoodItem < ApplicationRecord
  validates :name, :item_type, presence: true

  enum item_type: %i[protein carb fat vegetable other]

  has_many :food_item_meals
  has_many :meals, through: :food_item_meals
end
