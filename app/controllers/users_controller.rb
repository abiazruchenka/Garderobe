class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    render :layout => 'main'
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email,:first_name,:last_name,:gender, :password,
                                 :password_confirmation)
  end
end