# frozen_string_literal: true

class Meal < ApplicationRecord
  enum name: %i[breakfast lunch dinner]

  has_and_belongs_to_many :food_items
  has_and_belongs_to_many :daily_plans

  scope :breakfasts, -> { where(name: names[:breakfast]) }
  scope :lunches, -> { where(name: names[:lunch]) }
  scope :dinners, -> { where(name: names[:dinner]) }
end
