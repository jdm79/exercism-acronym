module BookKeeping
  VERSION = 4
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
end