require_relative '../music_collection'

describe MusicCollection do
  it 'should add albums' do
    mc = MusicCollection.new
    mc.add('title', 'artist')
    mc.add('title2', 'artist2')
    expect(mc.collection.keys.length).to eq 2
  end

  it 'should mark albums as played' do
    mc = MusicCollection.new
    mc.add('title', 'artist')
    mc.play('title')
    expect(mc.collection['title'].played).to eq true
  end #to output("my message").to_stdout

  it 'should show all albums played' do
    mc = MusicCollection.new
    mc.add('title', 'artist')
    mc.play('title')
    expect {mc.show_all}.to output("title by artist\n").to_stdout
  end

  it 'should show all albums played' do
    mc = MusicCollection.new
    mc.add('title', 'artist')
    mc.add('title_unplayed', 'artist')
    mc.play('title')
    expect {mc.show_unplayed}.to output("title_unplayed by artist\n").to_stdout
  end

  it 'should show all titles by an artist' do
    mc = MusicCollection.new
    mc.add('title', 'artist')
    mc.add('title_by_another', 'another_artist')
    expect {mc.show_all_by('artist')}.to output("title by artist\n").to_stdout
  end

  it 'should show all unplayed title by an artist' do
    mc = MusicCollection.new
    mc.add('title', 'artist')
    mc.add('title_unplayed', 'artist')
    mc.add('title_by_another', 'another_artist')
    mc.play('title')
    expect {mc.show_unplayed_by('artist')}.to output("title_unplayed by artist\n").to_stdout
  end
end
