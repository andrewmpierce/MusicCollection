require_relative '../music_collection_helper'

describe MusicCollectionHelper do
  it 'should grab the title and artist from user input' do
    helper = MusicCollectionHelper.new
    input = "play \"title\" by \"artist\""
    command = "play"
    expect(helper.get_title_and_artist(input, command)).to eq({title: 'title', artist: 'artist'})
  end
end
