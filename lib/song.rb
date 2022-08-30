require 'pry'

class Song

attr_accessor :name, :artist, :genre
@@count = 0  
@@artists = []
@@genres = []
@@genre_count = {}
@@artist_count = {}

  def self.count
    @@count
  end


  # .uniq takes our array of ["Jay-Z", "Jay-Z", "Jay-Z"] into a reuturn value of 3
  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << @artist
    @@genres << @genre
#||= or/equal operator evaluates left side (truthy?) and assigns to right side if falsey
    @@genre_count[genre] ||= 0
    @@genre_count[genre] += 1
    @@artist_count[artist] ||= 0
    @@artist_count[artist] += 1
  end
end




