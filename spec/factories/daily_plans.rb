# frozen_string_literal: true

FactoryBot.define do
  factory :daily_plan do
    date { Date.new }
    meals do
      [
        create(:meal, :breakfast),
        create(:meal, :lunch),
        create(:meal, :dinner)
      ]
    end
  end
end
