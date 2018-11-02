module BookKeeping
  VERSION = 1
end

class Acronym
  def self.abbreviate(phrase)
    result = []
    words = phrase.sub(/[-]/, ' ').split()
    words.each do |word|
      result.push(word[0,1].capitalize)
    end
    result.join
  end
  module BookKeeping
      VERSION = 1 # Where the version number matches the one in the test.
    end
end