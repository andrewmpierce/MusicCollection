require_relative '../music_collection_helper'

describe MusicCollectionHelper do
  it 'should grab the title and artist from user input' do
    helper = MusicCollectionHelper.new
    input = "play \"Title\" \"Artist\""
    command = "play"
    expect(helper.get_title_and_artist(input, command)).to eq({first: 'Title', second: 'Artist'})
  end
end
