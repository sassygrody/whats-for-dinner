# frozen_string_literal: true

class FoodItem < ApplicationRecord
  validates :name, :item_type, presence: true

  enum item_type: %i[vegetable protein carb fat]

  has_and_belongs_to_many :meals
end
