class Artist

    attr_accessor :name, :songs

    def initialize(name)
        self.name = name
        self.songs = []
    end

    def add_song(song)
        self.songs << song
        song.artist = self
    end
    
    def add_song_by_name(song_name)
        song = Song.new(song_name)
        self.add_song(song)
    end

    def self.song_count
        Song.all.length
    end
end