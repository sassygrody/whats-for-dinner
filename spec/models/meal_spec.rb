# frozen_string_literal: true

require "rails_helper"

RSpec.describe Meal, type: :model do
  describe "associations" do
    it { should have_many(:daily_plan_meals) }
    it { should have_many(:daily_plans) }
    it { should have_many(:food_item_meals) }
    it { should have_many(:food_items) }
  end

  describe "scopes" do
    it "has a breakfast meal" do
      create_list(:meal, 3, :breakfast)
      expect(Meal.breakfasts.length).to eq(3)
    end

    it "has a lunch meal" do
      create_list(:meal, 2, :lunch)
      expect(Meal.lunches.length).to eq(2)
    end

    it "has a dinner meal" do
      create_list(:meal, 3, :dinner)
      expect(Meal.dinners.length).to eq(3)
    end
  end
end
