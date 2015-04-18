class UserController < ApplicationController

  def index
    @user = User.all
  end

  def new
    User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to @user
    else
      @error = "wooopsies" #Find out if view needs to be rendered client side
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    if @user.save
      redirect_to @user
    else
    @error = "you just got topped by this app" #Find out if view needs to be rendered client side
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy!
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :avatar)
  end

end
