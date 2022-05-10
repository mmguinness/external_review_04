require './lib/evaluate_terms.rb'

describe EvaluateTerms do

  describe '#evaluate' do
    it 'returns a single term with the original term and evaluated total' do
      evaluate_terms = EvaluateTerms.new

      expect(evaluate_terms.evaluate("2")).to eq ["2", 2.0]
    end
  end
end
