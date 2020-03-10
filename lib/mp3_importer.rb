class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir["#{path}/*.mp3"].collect{|i| i.basename(path)}
  end

  def import(files)
    files.each{|filename| Song.new_by_filename(filename)}
  end



end
