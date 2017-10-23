# class Array
#   # Non-destructive; returns a copy of self, re-ordered randomly.
#   def shuffle
#     sort_by { rand }
#   end

#   # Destructive; re-orders self randomly.
#   def shuffle!
#     replace(shuffle)
#   end

#   # While we're here, we might as well offer a method
#   # for pulling out a random member of the <b>Array</b>.
#   def random_element
#     shuffle[0]
#   end
# end

class ShufflePlayer
  def initialize(@files : Array(String))
  end

  # Plays a shuffled version of self with the play_file method.
  def play
    @files.shuffle.each do |file|
      play_file(file)
    end
  end

  # Uses ogg123, assumes presence and appropriateness.
  private def play_file(file)
    system("ogg123 #{file}")
  end
end

# ## main code:

sp = ShufflePlayer.new(ARGV)
sp.play

# Changes
# remove rdoc
# private at start of line
# def initialize(files) => def initialize(files : Array(String))
#  def initialize(files : Array(String))
#   @files = files
# =>
#  def initialize(@files : Array(String))
# shuffle - methods are already standard for class Array in Crystal

# uitvoering:
#  ./shuffle_play example.ogg
# --: 1: --: ogg123: not found
# hoe ogg installeren ? (vorbis-tools) lukt niet
