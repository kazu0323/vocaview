class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @reviews = user.reviews
    @email = user.email
  end

  def new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:nickname)
  end
end
