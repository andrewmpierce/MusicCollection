class Album
  def init(title, artist, played=false)
      self.title = title
      self.artist = artist
      self.played = played
  end

  def unplayed
    !self.played
  end

end
