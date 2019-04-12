require 'pry'
class Song 
  attr_accessor :name 
  attr_reader :artist 
  
  def initialize(name)
    @name = name
  end 
  
  def artist=(artist)
    @artist = artist 
  end 
  
  # def artist_name=(name)
  #   self.artist = Artist.find_or_create_by_name(name)
  #   artist.add_song(self)
  # end 
  
  def self.new_by_filename(file)
    artist, song = file.split(" - ")
    new_song = self.new(song)
    new_artist = Artist.find_or_create_by_name(artist)
    new_artist.add_song(new_song)
    new_song.artist= new_artist 
    new_song
  end 
  
end 