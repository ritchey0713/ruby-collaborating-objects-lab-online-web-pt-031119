class Song 
  
  attr_accessor :name, :artist  
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(file) 
    song, artist = file.split(" - ")
    new_song = self.new(song)
    new_artist = Artist.find_or_create_by_name(name)
    new_song.artist = new_artist
    new_song
  end
  
end 