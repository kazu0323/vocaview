class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]
  before_action :set_song, only: [:new, :create]
  def index
    @reviews = Review.all.limit(4).order("id DESC")
    @songs = Song.all
  end

  def new
    @review = Review.new
  end

  def create
    if Review.create(review_params)
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:review_title, :review_text, :rate).merge(user_id: current_user.id)
  end
  def set_song
    @song = Song.find(params[:id])
  end
end