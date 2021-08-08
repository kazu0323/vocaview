def youtubeDB
  options = {
  :id => '7Y9sJvLI3Po'
  }
  response = youtube.list_videos("snippet", options)
  info = response.items.first
  snippet = info.snippet
  id = info.id
  @song = Song.new
  @song.song_name = snippet.title
  @song.song_image = snippet.thumbnails.high.url
  @song.song_url = info.id
  @song.song_composer = snippet.channel_title
  @song.save
end