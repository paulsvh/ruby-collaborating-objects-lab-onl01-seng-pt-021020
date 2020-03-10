class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(title)
    title.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    if (self.name.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def print_songs
    songs.each {|songs| puts song.name}
  end
end
