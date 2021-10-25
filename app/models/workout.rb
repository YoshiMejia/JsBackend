class Workout < ApplicationRecord
    belongs_to :planner
    # validate minimum value for sets and reps has to be 1
end
