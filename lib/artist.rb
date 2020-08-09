

class Artist

    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        self.class.all << self
    end


    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select do |individual_song|
            individual_song.artist == self
        end
    end

    def genres 
        my_genres = []
        Song.all.each do |individual_song|
            if (individual_song.artist == self)
                my_genres << individual_song.genre
            end
        end
        my_genres
    end



    def self.all
        @@all
    end
end