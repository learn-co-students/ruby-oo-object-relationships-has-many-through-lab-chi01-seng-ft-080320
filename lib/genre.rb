class Genre

    attr_reader :name, :song

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
        @song = song
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        Song.all.map do |song|
            song.artist
        end
    end
    
    def self.all
        @@all
    end

end