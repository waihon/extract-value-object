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
  end
end