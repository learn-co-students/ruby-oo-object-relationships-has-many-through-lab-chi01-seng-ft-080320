class Artist

    attr_reader :name
    @@all = []
    #initializes with a name
    def initialize(name)
        @name = name
        Artist.all << self  
    end
    #able to access all instances of Artist class
    def self.all
        @@all 
    end
    #creates new song associated with artist given name and genre
    def new_song(name, genre)
        Song.new(name, self, genre)
    end
    #returns all songs associated with artist instance
    def songs
        Song.all.select do |song_instance|
            song_instance.artist == self 
        end
    end
    #shows all genres associated with artist instance
    def genres
        self.songs.map do |artist_song|
            artist_song.genre
        end
    end
end #of Artist class