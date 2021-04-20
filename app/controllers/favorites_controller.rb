class FavoritesController < ApplicationController
    skip_before_action :authorized
    
    def index 
        favorites = Favorite.all
        render json: favorites 
    end

    def show 
        favorite = Favorite.find(param[:id])
        render json: favorite
    end

    def create 
        @favorite = Favorite.create(favorite_params)
        if @favorite.valid?
            render json: @favorite, status: :created
        else 
            render json: {errors: @favorite.errors.full_message}, status: :unprocessable_entity
    end
end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
        render json: {'message': 'Delete Successful'}
    end

    private
    def favorite_params
        params.require(:favorite).permit(:id, :like, :user_id, :miss_id)
    end
end
