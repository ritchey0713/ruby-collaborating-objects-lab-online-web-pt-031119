require 'pry'

class MP3Importer 
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end 
  
  def files 
    Dir.entries(path).find_all {|file| file.include?(".mp3")}
    # Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }

  end 
  
  def import 
    files.each do |song|
      Song.new_by_filename(song)
    end 
  end 
  
  
end 