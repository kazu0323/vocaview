class SongsController < ApplicationController
  before_action :set_song, only: [:show]
  before_action :set_user, only: [:show]

  def show
    @reviews = @song.reviews
  end

  private
  def set_song
    @song = Song.find(params[:id])
  end
  def set_user
    @user = User.find(params[:id])
  end
end
