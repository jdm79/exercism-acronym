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

# Mentor Feedback:
# Hello!
# Using split looks like an obvious choice (I agree!), 
# but that's the catch in this exercise. With split, 
# you need to focus on the delimiters (space and - ).

# Ruby has also String#scan. With scan and a regex, 
# you can focus on the parts you need. For instance, 
# scan with the regex /\b\w/ will catch 'word boundaries' 
# (space, - and more) followed by a word character.
# Thus returning the first letters only.
# I use Rubular for my regular expressions :)
# I look forward to seeing your next iteration!

class Acronym
  def self.abbreviate(phrase)
    phrase.scan(/\b\w/)
  end
end