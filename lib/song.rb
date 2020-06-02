class Song 
  
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)  
    new_song.artist_name = artist
    new_song
  end
  
  def artist_name=(artist_name)
    #self.artist.nil? ? nil : 
  end
  
end