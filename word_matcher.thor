require "thor"

class WordMatcher < Thor
  desc "combinations", "Generates random combinations from the words provided"
  def combinations
    nouns = []
    verbs = []

    times = ask("How many words do you want to pair?")

    times.to_i.times do
      nouns << ask("Enter a noun: ")
    end

    puts "\n"

    times.to_i.times do
      verbs << ask("Enter a verb: ")
    end

    nouns.shuffle
    verbs.shuffle

    puts "\n"
    nouns.each_with_index do |noun, idx|
      puts "#{noun} #{verbs[idx]}"
    end
  end
end

WordMatcher.start(ARGV)
