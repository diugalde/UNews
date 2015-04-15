class UsersController < ApplicationController
    def new
        @user = User.new
    end
    
    def enter
    end
    
    def newgplus
      user = User.find_by_email(params[:email])
      if user
        redirect_to root_url, notice: "You are already registered!"
      else
        @username = params[:email]
        @email = params[:email]
        @fullname = params[:fullname]
        @password = params[:fullname]
        u = User.new(username: @username, email: @email, fullname: @fullname, password: @password)
        u.save
        redirect_to root_url, notice: "User with name #{@fullname} and Google+ ID #{@email} has been successfully registered!"
      end
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to '/home'
        else
            #nothing
        end
    end
    
    def edit
    end
    
    def update
    end
    
    private
    def user_params
       params.require(:user).permit(:username, :email, :password) 
    end
end