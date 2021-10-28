class PlannersController < ApplicationController
    def index
        planners = Planner.all
        render json: planners
    end

    def create
        planner = Planner.new(planner_params)
        if planner.save
            render json: planner
        else
            render json: {error: 'error'}
        end
    end

    def update
        planner = Planner.find(params[:id])
        workout = Workout.new(name: updated_planner_params[:workout_attributes][:name], description: updated_planner_params[:workout_attributes][:description], sets: updated_planner_params[:workout_attributes][:sets], reps: updated_planner_params[:workout_attributes][:reps], planner_id: params[:id])
        if workout.save
            render json: planner
        else
            render json: {error: 'error'}
        end
    end

    private
    def planner_params
        params.require(:planner).permit(:name, :id)
    end
    def updated_planner_params
        params.require(:planner).permit(:name, :id, workout_attributes: [:name, :description, :sets, :reps])
    end
end
