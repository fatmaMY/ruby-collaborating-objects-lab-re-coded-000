class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path=path
    @files=[]
  end
  def files
    if @files.empty?
@files = Dir.entries(@path).select {|file| file.end_with?(".mp3")}
end
@files
end
def import
  self.files.each do |filename|
    Song.new_by_filename(filename)
  end
end
end
