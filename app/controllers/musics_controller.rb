class MusicsController < ApplicationController
  require 'rspotify'
  RSpotify.authenticate(ENV['short'], ENV['short'])

  def search
    @musics = Music.all
    if params[:search].present?
    @searchartists = RSpotify::Artist.search(params[:search])
    end
  end
end
