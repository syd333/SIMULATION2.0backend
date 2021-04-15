class MissesController < ApplicationController
    skip_before_action :authorized
    
    def index 
        misses = Miss.all
        render json: misses 
    end

    def show 
        miss = Miss.find(param[:id])
        render json: miss
    end

    def create 
        miss = Miss.create(miss_params)
        render json: miss
    end

    def destroy
        miss = Miss.find(params[:id])
        miss.destroy
        render json: {'message': 'Delete Successful'}
    end

    private
    def miss_params
        params.permit(:id, :title, :message, :user)
    end
end
