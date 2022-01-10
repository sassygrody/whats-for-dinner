# frozen_string_literal: true

class DailyPlan < ApplicationRecord
  has_and_belongs_to_many :meals
end
