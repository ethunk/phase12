# YOUR CODE HERE
require 'pry'
if ARGV.size == 2
  filename = ARGV[0]
  top_words_count = ARGV[1]

  word_rank = {}

  File.open(filename, "r") do |file|
    data = file.read
    sanitized_data = data.gsub(/[,.!?;:*&"]/, '').downcase

    words = sanitized_data.split(" ")
    words.each do |word|
      if word_rank[word]
        word_rank[word] += 1
      else
        word_rank[word] = 1
      end
    end
  end

  File.open("stop_words.txt", "r") do |file|
    data = file.read
    stop_words = data.split

    stop_words.each do |stop_word|
      if word_rank[stop_word]
        word_rank[stop_word] = 0
      end
    end
  end

  ordered_word_count = word_rank.sort.sort_by {|key, value| -1*value}

  (0..(top_words_count.to_i-2)).to_a.each do |index|
    puts "#{ordered_word_count[index][0]}: #{ordered_word_count[index][1]} "
  end

else
  raise "Incorrect Number of Inputs. Expecting 2, recieved #{ARGV.count}"
end
