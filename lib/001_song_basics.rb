require 'pry'
class Song
@@all = []

attr_accessor :artist

  def initialize (name,artist=nil, genre = nil)
    @name = name
  #  if artist != nil
  #    @artist =artist
  #    self.artist = artist
  #  end
    self.artist = artist if artist != nil
    self.genre = genre if genre != nil
  end


  def name
    @name
  end

  def name= (name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all = []
  end

  def save
    @@all << self
  end

  def self.create (name)
    self.new(name).save
    self
  end
  def artist
    @artist
  end
  def artist=artist
   # artist = Artist.new
   @artist = artist
   artist.add_song(self)
  end

  def genre
    @genre
  end

  def genre=genre
    @genre = genre
    genre.add_song(self) unless genre.songs.include?(self)
  end
#  binding pry

  def self.find_by_name(name)
    all.detect {|song| song.name == name}
  end
end
