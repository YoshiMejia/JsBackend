class Workout < ApplicationRecord
    belongs_to :planner
    validates :sets, :reps, numericality: { :greater_than => 1 }
end
