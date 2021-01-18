
class Artist
    @@all = []

    attr_reader :name, :genre

    def initialize (name)
        @name = name
        @@all << self
    end


    def self.all
        @@all
    end

    def songs
        Song.all.select{|song_inst|
        song_inst.artist == self}
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        songs.collect{|song_inst| song_inst.genre}
    end

end
