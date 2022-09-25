class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count = 3
    @@artists = ["Jay-Z", "Jay-Z", "Brittany Spears"]
    @@genres = ["rap", "rap", "pop"]
end

def self.count
    @@count
end

def self.artists
    @@artists.uniq
end

def self.genre_count

    genreHash = Hash.new

    #["rap", "rap", "pop"]
    @@genres.each do |genre| 
        if genreHash.key?(genre)
            genreHash[genre] = genreHash[genre] + 1 # {"rap": 2}
        else
            genreHash[genre] = 1  #first time {"rap":1} second time {"rap": 2, "pop":}
        end
    end
    genreHash
end

def self.artist_count

    artistHash = Hash.new

    @@artists.each do |artist| 
        if artistHash.key?(artist)
            artistHash[artist] = artistHash[artist] + 1 
        else
            artistHash[artist] = 1
        end
    end
    artistHash
end

def self.genres
    @@genres.uniq
end





end