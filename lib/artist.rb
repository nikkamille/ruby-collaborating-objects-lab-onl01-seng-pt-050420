class Artist 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def add_song(song)
    Song.all.artist  
  end
  
end