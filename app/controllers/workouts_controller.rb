class WorkoutsController < ApplicationController
    def index
        workouts = Workout.all
        render json: workouts
    end

    def create
        workout = Workout.new(workout_params)
        if workout.save
            render json: workout
        else
            render json: {error: 'error'}
        end 
    end

    def update
        workout = Workout.find(params[:id])
        if workout.update(workout_params)
            render json: workout
        else
            render json: {error: 'error'}
        end
    end

    private

    def workout_params
        params.require(:workout).permit(:name, :description, :sets, :reps, :completed, planner_attributes: [:name, :id])
    end
end
