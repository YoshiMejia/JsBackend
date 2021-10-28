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

    private
    def planner_params
        params.require(:planner).permit(:name)
    end
end
