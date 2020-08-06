class Song
    #initialize with name, artist, and genre accessible to other classes
    @@all = []

    def self.all 
        @@all 
    end 

    def initialize(name, artist, genre)
        @name = name
        @artist = artist 
        @genre = genre 

        Song.all << self 
    end

    attr_reader :name, :artist, :genre

end #of Song class