require './music_collection'

running = true
music_collection = new MusicCollection
helper = new MusicCollectionHelper

def quit
  running = false
end

def add_command


puts "Welcome to your music collection!"
while running
  command = gets.chomp
  case command
  when command.include? 'add'



end
