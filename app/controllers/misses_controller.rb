class MissesController < ApplicationController
    skip_before_action :authorized
    # not Miss.all but particular area
    # get users collection // .near([lat, long], 5), mile
     #def index 
    # if params[:search].present?
    #     @locations = Location.near(params[:search], 50, :order => :distance)
    # else
    #     @locations = Location.all
    # end
    # end

    def index 
        misses = Miss.all.order(created_at: :desc)
        render json: misses 
    end

    def show 
        miss = Miss.find(params[:id])
        render json: miss
    end

    def create 
        @miss = Miss.create(miss_params)
        if @miss.valid?
            render json: @miss, status: :created
        else 
            render json: {errors: @miss.errors.full_message}, status: :unprocessable_entity
    end
end

    def destroy
        miss = Miss.find(params[:id])
        miss.destroy
        render json: {'message': 'Delete Successful'}
    end

    private
    def miss_params
        params.require(:miss).permit(:id, :title, :message, :user_id, :lat, :long)
    end
end


    # add location controller, model etc. 
    # --- in locations controller:::
    #def index 
    # if params[:search].present?
    #     @locations = Location.near(params[:search], 50, :order => :distance)
    # else
    #     @locations = Location.all
    # end
    # end

    # def show 
    #     @location = Location.find(params[:id])
    # end

    # def new
    #     @location = Location.new
    # end

    # def create 
    #     @location = Location.new(params[:location])
    #     if @location.save
    #     etc...
    #     end