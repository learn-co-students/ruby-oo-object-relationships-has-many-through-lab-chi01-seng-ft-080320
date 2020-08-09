


class Genre 

    attr_accessor :name
    @@all = []

    def initialize (name)
        @name = name
        self.class.all << self
    end

    def songs 
        Song.all.select do |individual_song|
            individual_song.genre == self
        end
    end

    def artists
        my_artists = []
        Song.all.each do |individual_song|
            if (individual_song.genre == self)
                my_artists << individual_song.artist 
            end
        end
        my_artists
    end

    def self.all
        @@all
    end

end