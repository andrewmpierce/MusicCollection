class Album
  attr_reader :title, :artist, :played

  def initialize(title, artist, played=false)
      @title = title
      @artist = artist
      @played = played
  end

  def play
    @played = true
  end

  def unplayed
    !@played
  end

end
