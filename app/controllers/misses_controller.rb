class MissesController < ApplicationController
    skip_before_action :authorized
    #extend Model geocoder 
    # not Miss.all but particular area
    # get users collection // .near([lat, long], 5), mile
    def index 
        misses = Miss.all
        render json: misses 
    end

    def show 
        miss = Miss.find(param[:id])
        render json: miss
    end

    # def create 
        # render errors with status
        # error full messages 
    #     miss = Miss.create(miss_params)
    #     render json: miss
    # end
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
