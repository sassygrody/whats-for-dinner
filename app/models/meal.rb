# frozen_string_literal: true

class Meal < ApplicationRecord
  enum name: %i[breakfast lunch dinner]

  has_and_belongs_to_many :food_items

  scope :breakfast, -> { where(name: "breakfast") }
  scope :lunch, -> { where(name: "lunch") }
  scope :dinner, -> { where(name: "dinner") }
end
