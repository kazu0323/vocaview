class UsersController < ApplicationController
  before_action :authenticate_user!, only: [ :edit ]
  before_action :set_user, only: [:edit, :show, :update]
  before_action :move_to_edit, only: [:edit, :update]

  def show
    @reviews = @user.reviews
    @email = @user.email
  end

  def new
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :image_name)
  end

  def move_to_edit
    unless current_user.id == @user.id
      redirect_to root_path
    end
  end

  def set_user
    @user = User.find(params[:id])
  end
end
