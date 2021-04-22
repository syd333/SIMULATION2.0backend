class RepliesController < ApplicationController
    skip_before_action :authorized

    def index
        replies = Reply.all.order(created_at: :desc)
        render json: replies
    end

    def create 
        reply = Reply.create(reply_params)
        render json: reply
    end

    private
    def reply_params
        params.require(:reply).permit(:id, :title, :message, :user_id, :miss_id)
    end
end
