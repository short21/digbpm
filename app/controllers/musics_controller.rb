class MusicsController < ApplicationController
  require 'rspotify'
  RSpotify.authenticate(ENV['49bcca4918aa40a9b517faf7ebdf42c7'], ENV['9c88780e97d041dcbcf6e3a9763f98ba'])

  def search
    @musics = Music.all
    if params[:search].present?
    @searchartists = RSpotify::Artist.search(params[:search])
    end
  end
end
