require 'pry'

class MP3Importer 
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end 
  
  def files 
    Dir.entries(path).find_all {|file| file.include?(".mp3")}
  end 
  
  def import 
    
  end 
  
  
end 