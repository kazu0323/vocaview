class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]

  def index
    @reviews = Review.all.limit(5).order("id DESC")
    @songs = Song.all.limit(4).order("id DESC")
  end

  def new
    @song = Song.find(params[:song_id])
    @review = Review.new
  end

  def create
    if Review.create(review_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def search
  end
  def destroy
    Review.find(params[:id]).destroy
    redirect_to root_path
  end

  private
  def review_params
    params.require(:review).permit(:review_title, :review_text, :rate).merge(user_id: current_user.id, song_id: params[:song_id])
  end
end