# Add your code here
require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, index|
    puts (index + 1).to_s + ". " + song
    }
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  output = ""
  songs.each_with_index { |song, index|
    if user_response == (index + 1).to_s || user_response == song
      output = "Playing #{song}"
    end
  }
  if output.include?("Playing")
    puts output
  elsif user_response == "list"
    list(songs)
    play(songs)
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb	  #this method is the same as in jukebox.rb
  input = ""
  while input != "exit"
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "play"
      play(my_songs)
    when "list"
      list(my_songs)
    when "help"
      help
    when "exit"
      break
    end
  end
  exit_jukebox
end 