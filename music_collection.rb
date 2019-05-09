require './album'

class MusicCollection
  attr_reader :collection

  def initialize(collection = {})
    @collection = collection
  end

  def add(title, artist)
    album = Album.new(title, artist)
    if @collection[title]
      puts 'That title is already in your collection!'
    else
      @collection[title] = album
    end
    puts "Added #{title} by #{artist}"
  end

  def play(title)
    album = @collection[title]
    album.play()
    puts "Played #{title} by #{album.artist}"
  end

  def show_all
    @collection.each do |title, album|
      album = @collection[title]
      puts "#{album.title} by #{album.artist}"
    end
  end

  def show_unplayed
    @collection.each do |title, album|
      album = @collection[title]
      puts "#{album.title} by #{album.artist}" if album.unplayed
    end
  end

  def show_all_by(artist)
    @collection.each do |title, album|
      album = @collection[title]
      puts "#{album.title} by #{album.artist}" if album.artist == artist
    end
  end

  def show_unplayed_by(artist)
    @collection.each do |title, album|
      album = @collection[title]
      if album.artist == artist && album.unplayed
        puts "#{album.title} by #{album.artist}"
      end
    end
  end
end
