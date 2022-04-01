class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.birthday = "#{params[:user][:year]}/#{params[:user][:month]}/#{params[:user][:day]}"
    
    p "============================"
    p  params
    p "============================"
    if @user.save
      log_in @user
      redirect_to root_path
    else
      render :new
    end
  end

  def index
  end

  def show
    
  end

  def edit
  end

  def update
  end
  
  
  private

    def user_params
      params.require(:user).permit(:nickname, :email, :password,:password_confirmation)
    end
end
