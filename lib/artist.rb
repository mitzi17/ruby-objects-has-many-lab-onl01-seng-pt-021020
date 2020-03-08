#require 'pry'
class Artist
  
  @@song_count = [ ]
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = [ ]
  end
  
  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end
  
  def self.song_count
    @@song_count
  end

end
  
