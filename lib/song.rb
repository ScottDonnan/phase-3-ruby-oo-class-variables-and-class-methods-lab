require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    
    @@count = 0
    @@genres = []
    @@artists = []
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count = @@count + 1
        @@genres << genre
        @@artists << artist
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
        @@genres.group_by {|genre| genre}.map{|k, value| [k, value.length]}.to_h
    end

    def self.artist_count
        @@artists.group_by {|artist| artist}.map{|k, value| [k, value.length]}.to_h
    end

end

ninety_nine_problems1 = Song.new("99 Problems", "Jay-Z", "rap")
ninety_nine_problems2 = Song.new("99 Problems", "Jay-Z", "rap")
ninety_nine_problems3 = Song.new("99 Problems", "Jay-Z", "rap")
ninety_nine_problems4 = Song.new("99 Problems", "Jay-Z", "rap")

binding.pry