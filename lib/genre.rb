class Genre
    #initialize with name and save to collection of all genres
    @@all = [] 

    def self.all 
        @@all 
    end

    def initialize(name)
        @name = name 
        Genre.all << self 
    end
    attr_reader :name 
    #shows all songs associated with genre instance
    def songs 
        Song.all.select do |song_iteration|
            song_iteration.genre == self 
        end
    end
    #shows all artists associated with genre instance
    def artists
        self.songs.map do |genre_songs|
            genre_songs.artist
        end
    end 

end #of genre class