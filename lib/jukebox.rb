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
  songs.each_with_index { |song, index| puts "#{(index + 1).to_s}. #{song}"}
end 

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.strip
  songs.each_with_index do |song, index| 
    if choice == song || choice.to_i == (index + 1)
      puts "Playing #{song}"
      return "Playing #{song}"
    end
  end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = "start"
  while input.downcase != "exit" do
    puts "Please enter a command:"
    input = gets.strip
    if input.downcase == 'help'
      help
    elsif input.downcase == 'list'
      list(songs)
    elsif input.downcase == 'play'
      play(songs)
    end 
    input
  end 
  exit_jukebox
end 

def run(songs)
  input = "start"
  until input.downcase == "exit" do
    puts "Please enter a command:"
    input = gets.strip
    case input 
    when 'help'
      help
    when 'list'
      list(songs)
    when 'play'
      play(songs)
    end 
    input
  end 
  exit_jukebox
end 



