require 'music_library'

RSpec.describe MusicLibrary do
    describe "#add" do
        it "adds a track to my list" do
            my_tracks = MusicLibrary.new
            result = my_tracks.add("My favourite song - Author")
            expect(result).to eq nil
        end
    end

    describe "#add" do
        it "fails if the argument is not a string" do
            my_tracks = MusicLibrary.new
            expect { my_tracks.add(323) }.to raise_error "The argument must be a string."
        end
    end

    describe "#display_library" do
        it "displays a list with all the added tracks to date" do
            my_tracks = MusicLibrary.new
            my_tracks.add("My favourite song - Author")
            result = my_tracks.display_library()
            expect(result).to eq ["My favourite song - Author"]
        end
    end

    describe "#display_library" do
        it "fails if the library is empty" do
            my_tracks = MusicLibrary.new
            expect { my_tracks.display_library() }.to raise_error 'The library is currently empty.'
        end
    end

    describe "#display_library" do
        it "displays a list with all the added tracks" do
            my_tracks = MusicLibrary.new
            my_tracks.add("My favourite song - Author") #=> []
            my_tracks.add("My least favourite song - Author2") #=> []
            result = my_tracks.display_library()
            expect(result).to eq ["My favourite song - Author", "My least favourite song - Author2"]
        end
    end
end