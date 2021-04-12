class UsersController < ApplicationController
    # skip_before_action :authorized, only: [:login]

    def index 
        users = User.all
        render json: users 
      end
    
    
    def getuser 
        render json: {user: UserSerializer.new(current_user)}, status: :accepted
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create 
        @user = User.create(user_params)
        if @user.valid?
            @token = issue_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), jwt: @token}, status: :created
        else 
            render json: {error: 'failed to create user'}, status: :not_acceptable
        end
    end

    def login
        user = User.find_by(username: params[:email])
        if user && user.authenticate(params[:password])                                       
          token = issue_token({user_id: user.id})
          render json: {user: UserSerializer.new(user), jwt: token}, status: :accepted
        else
          render json: {error: 'That user could not be found'}, status: :unauthorized
        end
      end

    private
    def user_params
        params.permit(:email, :password)
    end

end
