require './lib/evaluate_terms.rb'

describe EvaluateTerms do

  describe '#evaluate' do
    it 'when passed a single term, returns the original term and evaluated total' do
      evaluate_terms = EvaluateTerms.new
      expect(evaluate_terms.evaluate("2")).to eq ["2", 2.0]
    end

    it 'when passed a single negative term, returns the original term and evaluated total' do
      evaluate_terms = EvaluateTerms.new
      expect(evaluate_terms.evaluate("-2")).to eq ["-2", -2.0]
    end

    it 'when passed two terms, returns the original terms and evaluated total' do
      evaluate_terms = EvaluateTerms.new
      expect(evaluate_terms.evaluate("2 + 3")).to eq ["2 + 3", 5.0]
    end

    it 'when passed two terms, returns the original terms and evaluated total' do
      evaluate_terms = EvaluateTerms.new
      expect(evaluate_terms.evaluate("-2 + 3")).to eq ["-2 + 3", 1.0]
    end

  end
end
