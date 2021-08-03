class SongsController < ApplicationController
  before_action :set_song, only: [:show]

  def index
    @songs = Song.all.order("id DESC")
  end
  def show
    @reviews = @song.reviews
  end

  private
  def set_song
    @song = Song.find(params[:id])
  end

end
