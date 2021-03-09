class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        save
    end
    
    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def new_song(name, genre)
         Song.new(name, self, genre)
       
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def genres
        songs.collect{|song| song.genre}
    end

end














# class Artist
#     @@all = []

#     attr_reader :name, :genre

#     def initialize (name)
#         @name = name
#         @@all << self
#     end


#     def self.all
#         @@all
#     end

#     def songs
#         Song.all.select{|song_inst|
#         song_inst.artist == self}
#     end

#     def new_song(name, genre)
#         Song.new(name, self, genre)
#     end

#     def genres
#         songs.collect{|song_inst| song_inst.genre}
#     end

# end
