class MusicLibrary
    def initialize
        @list_of_tracks = []
    end

    def add(track)
        fail "The argument must be a string." if track.class != String
        @list_of_tracks << track
        return nil
    end

    def display_library
        fail "The library is currently empty." if @list_of_tracks.empty?
        return @list_of_tracks
    end
end
