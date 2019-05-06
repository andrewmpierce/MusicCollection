require './album'

class MusicCollection
  def init
    self.collection = {}
  end

  def add(title, artist)
    album = new Album(title, artist)
    self.collection[title] = album
    puts "Added #{title} by #{artist}"
  end

  def play(title)
    album = self.collection[title]
    album.played = true
    puts "Played #{title} by #{album.artist}"
  end

  def show_all
    self.collection.each do |title, album|
      album = self.collection[title]
      puts "#{album.title} by #{album.artist}"
    end
  end

  def show_unplayed
    self.collection.each do |title, album|
      album = self.collection[title]
      puts "#{album.title} by #{album.artist}" if album.unplayed
    end
  end

  def show_all_by(artist)
    self.collection.each do |title, album|
      album = self.collection[title]
      puts "#{album.title} by #{album.artist}" if album.artist == artist
    end
  end

  def show_unplayed_by(artist)
    self.collection.each do |title, album|
      album = self.collection[title]
      if album.title == artist && album.unplayed
        puts "#{album.title} by #{album.artist}"
      end
    end
  end
end
