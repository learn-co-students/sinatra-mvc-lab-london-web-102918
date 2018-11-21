class PigLatinizer

  attr_accessor :text

  def piglatinize(text)
    if text.split(" ").length == 1
      piglatinize_word(text)
    else piglatinize_sentence(text)
    end
  end

  def piglatinize_word(text)
    if vowel_check(text[0])
      text += "w"
    elsif !vowel_check(text[0]) && !vowel_check(text[1]) && !vowel_check(text[2])
      text = text.slice(3..-1) + text.slice(0,3)
    elsif !vowel_check(text[0]) && !vowel_check(text[1])
      text = text.slice(2..-1) + text.slice(0,2)
    else
    text = text.slice(1..-1) + text.slice(0)
    end
      text << "ay"
  end

  def piglatinize_sentence(text)
    text.split.map do |w|
      piglatinize_word(w)
    end.join(" ")
  end

  def vowel_check(text)
    text.match(/[aeiouAEIOU]/)
  end

end
