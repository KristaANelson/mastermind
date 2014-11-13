class GuessChecker

  def self.num_correct_elements(answer, guess)
    answer_dup = answer.dup
    guess.each do |g|
      i = answer_dup.find_index(g)
      answer_dup.delete_at(i) if i
      end
    guess.length - answer_dup.length
  end


  def self.num_correct_positions(answer, guess)
    correct = []
    guess.zip(answer).select do |g, a|
    correct << g if g == a
    end
    correct.length
  end

  def self.num_correct_colors(answer, guess)
    answer_dup = answer.dup
    correct_count = 0
    guess.each do |g|
      correct_count += 1 if answer_dup.include?(g)
      answer_dup.delete(g)
    end
    correct_count
  end
end
