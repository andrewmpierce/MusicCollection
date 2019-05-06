require_relative '../album'

describe Album do
  it "should know when its played" do
     album = Album.new('title', 'artist')
     album.play()
     expect(album.played).to eq true
  end

  it "should contain a title" do
    album = Album.new('title', 'artist')
    expect(album.title).to eq 'title'
  end

  it "should contain an artist" do
    album = Album.new('title', 'artist')
    expect(album.artist).to eq 'artist'
  end
end
