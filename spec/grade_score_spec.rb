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
  end
end