

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

#def say_hello (name)
  #"Hi #{name}!"
#end

#puts "Enter your name!"
#users_name = gets.chomp

#puts say_hello(users_name)


def help 
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song,index|
    puts "#{index+1}. #{song}"
  end
end

def play (songs)
  puts "Please enter a song name or number:"
  users_response = gets.strip
  if songs.include?(users_response)
    puts "Playing #{users_response}"
  elsif (1..9).to_a.include?(users_response.to_i)
    index = (users_response.to_i) - 1
    puts "Playing #{songs[index]}"
  else 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  users_response = gets.strip
  unless users_response == "exit"
    if users_response == "list"
      list(songs)
      puts "Please enter a command:"
      users_response = gets.strip
    elsif users_response == "play"
      play(songs)
      puts "Please enter a command:"
      users_response = gets.strip
    elsif users_response == "help"
      help
      puts "Please enter a command:"
      users_response = gets.strip
    else 
      puts "I'm sorry, this is not a valid command. Please one of the following commands: list, play, help, or exit."
    end
  end
  exit_jukebox
end