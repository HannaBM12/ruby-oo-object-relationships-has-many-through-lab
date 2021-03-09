
class Genre

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|song| song.genre == self}
    end

    def artists
        songs.collect{|song| song.artist}
    end

end















# class Genre
#     @@all = []

#     attr_reader :name

#     def initialize (name)
#         @name = name
#         @@all << self
#     end


#     def self.all
#         @@all
#     end

#     def songs
#         Song.all.select {|genre_inst| 
#             genre_inst.genre == self}
#     end

#     def artists
#         songs.collect{|song_inst|
#             song_inst.artist}
#     end




# end