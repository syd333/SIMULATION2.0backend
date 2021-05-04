class FavoritesController < ApplicationController
    skip_before_action :authorized

    def index 
        favorites = Favorite.all
        render json: favorites 
    end

    def show 
        favorite = Favorite.find(params[:id])
        render json: favorite
    end

    def create 
        favorite = Favorite.create(favorite_params)
        render json: favorite
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
