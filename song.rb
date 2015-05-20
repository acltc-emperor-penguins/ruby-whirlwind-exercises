class Song

  attr_accessor :title, :artist
  # attr_reader :title, :artist
  # attr_writer :title, :artist

  def initialize(name=nil)
    @title = name
  end

  # def title=(new_title_name)
  #   @title = new_title_name
  # end

  # def title
  #   @title
  # end

  def play
    `say doowopdoowopdoowop`
  end

  def self.create_two_songs
    songs = []
    songs << Song.new
    songs << Song.new
    songs
  end

end


class Dog

  def bark
    `say woof`
  end

end