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
    song.artist = self 
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find(name)
    self.all.find 
  end
  
  def self.find_or_create_by_name(name)
    self.name == self.name ? self.find(detect) : self.new(name)
  end
  
end