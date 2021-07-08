class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @reviews = user.reviews
    @email = user.email
  end
end
