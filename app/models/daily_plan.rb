# frozen_string_literal: true

class DailyPlan < ApplicationRecord
  has_many :daily_plan_meals
  has_many :meals, through: :daily_plan_meals
end
