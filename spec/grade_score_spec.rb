require "spec_helper"

describe GradeScore do
  describe "#grade" do
    it 'returns A for a score 90 or greater' do
      scores = [90, 93, 100]

      scores.each do |score|
        grade_score = GradeScore.new(score)
        expect(grade_score.grade).to eq('A')
      end
    end

    it 'returns B for a score greater than or equal 80 and less than 90' do
      scores = [80, 83, 89]

      scores.each do |score|
        grade_score = GradeScore.new(score)
        expect(grade_score.grade).to eq('B')
      end
    end

    it 'returns C for a score greater than or equal 70 and less than 80' do
      scores = [70, 75, 79]

      scores.each do |score|
        grade_score = GradeScore.new(score)
        expect(grade_score.grade).to eq('C')
      end
    end

    it 'returns D for a score greater than or equal 60 and less than 70' do
      scores = [60, 63, 69]

      scores.each do |score|
        grade_score = GradeScore.new(score)
        expect(grade_score.grade).to eq('D')
      end
    end

    it 'returns F for a score less than 60' do
      scores = [0, 11, 22, 33, 44, 55, 59]

      scores.each do |score|
        grade_score = GradeScore.new(score)
        expect(grade_score.grade).to eq('F')
      end
    end
  end
end