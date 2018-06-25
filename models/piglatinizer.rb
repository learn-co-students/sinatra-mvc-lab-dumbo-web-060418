class PigLatinizer

  def piglatinize(text)
    text.split(" ").map do |word|
      latinize(word)
    end.join(" ")
  end

  def split_word(word)
    word.partition(/[aeiouAEIOU]/)
  end

  def latinize(word)
    parts = split_word(word)
    if parts[0].empty?
      return parts[1] + parts[2] + "way"
    else
      return parts[1] + parts[2] + parts[0] + "ay"
    end
  end

end
