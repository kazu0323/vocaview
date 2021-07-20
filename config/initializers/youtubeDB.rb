def ytregist
  info = response.items.first
  snippet = info.snippet
  @song = Song.new
  @song.song_name = snippet.title
  @song.song_image = snippet.thumbnails.high.url
  @song.song_url = 
  @song.song_composer = snippet.channel_title
  @song.save
end