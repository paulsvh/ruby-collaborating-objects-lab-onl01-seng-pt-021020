class MP3Importer
  attr_reader :filepath

  def initialize(filepath)
    @filepath = filepath
  end

  def files

  end

  def import(files)
    files.each{|filename| Song.new_by_filename(filename)}
  end



end
