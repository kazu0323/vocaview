require 'google/apis/youtube_v3'

API_KEY = ENV['YOUTUBE_DATA_API_KEY']

def get_youtube_service

  service = Google::Apis::YoutubeV3::YouTubeService.new
  service.key = API_KEY

  return service
end