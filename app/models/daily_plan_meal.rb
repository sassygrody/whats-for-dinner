# frozen_string_literal: true

class DailyPlanMeal < ApplicationRecord
  belongs_to :daily_plan
  belongs_to :meal
end
