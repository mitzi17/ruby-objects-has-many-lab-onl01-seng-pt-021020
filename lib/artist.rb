#require 'pry'
class Artist
  
  @@song_count = [ ]
  
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = [ ]
  end
  
  def songs=(song)
    @songs = song
    song.artist = song
  
  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = song
  end
  
  def self.song_count
    @@song_count
  end

end
  
