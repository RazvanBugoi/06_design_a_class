# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class MusicLibrary
  def initialize
    # Stores a list with all the tracks
  end

  def add(track) 
    # Track is a string
    # Returns an empty list
    # Fails if the argument is not a string
  end

  def display_library
    # Return a list will all the tracks currently in my library
    # Fails if the library is empty
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
my_tracks = MusicLibrary.new
my_tracks.add("My favourite song - Author") #=> []

# 2
my_tracks = MusicLibrary.new
my_tracks.add(23) # Fails as the argument is not a string

# 3
my_tracks = MusicLibrary.new
my_tracks.add("My favourite song - Author") #=> []
my_tracks.display_library() #=> ["My favourite song - Author"]

# 4
my_tracks = MusicLibrary.new
my_tracks.display_library() #=> Fails as the library is empty

# 5
my_tracks = MusicLibrary.new
my_tracks.add("My favourite song - Author") #=> []
my_tracks.add("My least favourite song - Author2") #=> []
my_tracks.display_library() #=> ["My favourite song - Author", "My least favourite song - Author2"]
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
