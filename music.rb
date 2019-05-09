require './music_collection'
require './music_collection_helper'

running = true
music_collection = MusicCollection.new
helper = MusicCollectionHelper.new

puts "Welcome to your music collection!"
while running
  command = gets.chomp.downcase
  if command.include? helper.add_command
    title_artist = helper.get_title_and_artist(command, helper.add_command)
    music_collection.add(title_artist[:first], title_artist[:second])
  elsif command.include? helper.show_unplayed_by_command
    title_artist = helper.get_title_and_artist(command, helper.show_unplayed_by_command)
    music_collection.show_unplayed_by(title_artist[:first])
  elsif command.include? helper.show_all_by_command
    title_artist = helper.get_title_and_artist(command, helper.show_all_by_command)
    music_collection.show_all_by(title_artist[:first])
  elsif command.include? helper.show_unplayed_command
    music_collection.show_unplayed
  elsif command.include? helper.show_all_command
    music_collection.show_all
  elsif command.include? helper.play_command
    title_artist = helper.get_title_and_artist(command, helper.play_command)
    music_collection.play(title_artist[:first])
  elsif command.include? helper.quit_command
    puts "Bye!"
    running = false
  else
    puts "That is not a recognized command. Enter quit to quit program"
  end
end
