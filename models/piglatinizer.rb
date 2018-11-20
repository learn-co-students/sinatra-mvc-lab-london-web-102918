class PigLatinizer

  def piglatinize(phrase)
  phrase = phrase.split(' ')
  latinized = []
  vowels = ["a","e","i","o","u"]
  phrase.each do |word|
    if vowels.include?(word.downcase[0])
      latinized << word + "way"
    else
      parts = word.split(/([aeiou].*)/)
      latinized << parts[1] + parts[0] + "ay"
    end
  end
    latinized.join(' ')
  end

end
