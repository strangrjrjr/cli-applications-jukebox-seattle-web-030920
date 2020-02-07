# Add your code here
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
  songs.each_index { |index|
    track = index + 1
    puts "#{track}. #{songs[index]}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.strip
  #puts choice
  found = false
  songs.each { |song|
    if (choice.to_i == (song.index - 1)) or (choice == song)
      puts "Playing #{song}"
      found = true
    end
  }
  if found == false
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
  
end
