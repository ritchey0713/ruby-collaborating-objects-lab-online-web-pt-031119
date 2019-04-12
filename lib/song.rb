class Song 
  
  attr_accessor :name, :artist  
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(file) 
    song, artist = file.split(" - ")
    new_song = self.new(song)
    new_song.artist = artist 
  end 
end 