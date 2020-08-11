class Genre

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def songs
        Song.all.select do |song_instance|
            song_instance.genre == self
        end
    end

    def artists
        self.songs.map do |song_instance|
            song_instance.artist
        end
    end

    def self.all
        @@all
    end

end