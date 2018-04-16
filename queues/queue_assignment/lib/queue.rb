require 'pry'
module Launch
  class QueueIsEmpty < StandardError
  end
  class Queue
    def initialize
      @contents = []
    end

    def enter(value)
      @contents << value
    end

    def empty?
      @contents.empty?
    end

    def peek
      @contents.last
    end

    def leave
      if self.empty?
        raise QueueIsEmpty
      else
        @contents.shift
      end
    end

    def character_counts
      character_counts = {}
      @contents.each do |character|
        if character_counts.keys.include?(character)
          value = character_counts[character] + 1
          character_counts[character] = value
        else
          character_counts[character] = 1
        end
      end
      return character_counts
    end


  end
end

# buffer = Launch::Queue.new
# File.open('../paragraph.txt', 'r') do |f|
#   f.each_char do |char|
#     buffer.enter(char)
#   end
# end
