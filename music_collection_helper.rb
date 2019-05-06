class MusicCollectionHelper
  def add_command
    'add'
  end

  def play_command
    'play'
  end

  def show_all_command
    'show all'
  end

  def show_unplayed_command
    'show unplayed'
  end

  def show_all_by_command
    'show all by'
  end

  def show_unplayed_by_command
    'show all unplayed by'
  end

  def quit_command
    'quit'
  end

  def get_title_and_artist(user_input, command)
    title_and_artist = strip_command(user_input, command)
    title = title_and_artist[0]
    artist = title_and_artist.length > 1 ? title_and_artist[1] : nil
    { title: titleize(title), artist: titleize(artist) }
  end

  # This has been pulled directly from the Rails ActiveSupport docs
  # https://apidock.com/rails/ActiveSupport/Inflector/titleize
  private def titleize(word)
      word.gsub(/\b(?<!['â`])[a-z]/) { |match| match.capitalize } if !word.nil?
    end

  private def strip_command(user_input, command)
    args = user_input.downcase.sub(command, "")
    args.split(/"/).map { |word| word unless word.strip.empty? }.compact
  end







end
