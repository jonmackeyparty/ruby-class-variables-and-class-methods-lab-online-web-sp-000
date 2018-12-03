class Song 
  attr_accessor(:name, :artist, :genre)
  
  @@count = 0
  @@genres = [ ]
  @@artists = [ ]
  
  def initialize(name, artist, genre) 
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end
  
  def self.count
    @@count
  end
  
  def self.genres 
    @@genres.uniq
  end  
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    genre_hash = { }
    song_count = 1
    @@genres.map do |genre|
      if genre_hash.has_key?(genre)
        genre_hash[genre] = song_count += 1
      else genre_hash[genre] = song_count
      end 
    end
    genre_hash
  end
  
  def self.artist_count
  end
      

end