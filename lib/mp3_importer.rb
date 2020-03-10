class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir["#{path}/*.mp3"]
  end

  def import(files)
    files.each{|filename| Song.new_by_filename(filename)}
  end



end
