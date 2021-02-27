class GradeScore
  attr_reader :score

  def initialize(score)
    @score = score
  end

  def grade
    if score < 80
      'C'
    elsif score < 90
      'B'
    else
      'A'
    end
  end
end