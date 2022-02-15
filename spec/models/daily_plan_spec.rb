# frozen_string_literal: true

require "rails_helper"

RSpec.describe DailyPlan, type: :model do
  describe "associations" do
    it { should have_many(:daily_plan_meals) }
    it { should have_many(:meals) }
  end
end
