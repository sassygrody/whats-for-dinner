# frozen_string_literal: true

FactoryBot.define do
  factory :daily_plan do
    sequence(:date) { |n| Date.today + n.days }
    meals do
      [
        create(:meal, :breakfast),
        create(:meal, :lunch),
        create(:meal, :dinner)
      ]
    end
  end
end
