require './lib/evaluate_terms.rb'

describe EvaluateTerms do

  subject(:evaluate_terms) { described_class.new}
  describe '#evaluate_sum' do
    it 'when passed a single term, returns the original term and evaluated total' do
      expect(evaluate_terms.evaluate_sum("2")).to eq ["2", 2.0]
    end

    it 'when passed a single negative term, returns the original term and evaluated total' do
      expect(evaluate_terms.evaluate_sum("-2")).to eq ["-2", -2.0]
    end

    it 'when passed two terms, returns the original terms and evaluated total' do
      expect(evaluate_terms.evaluate_sum("2 + 3")).to eq ["2 + 3", 5.0]
    end

    it 'when passed two terms, returns the original terms and evaluated total' do
      expect(evaluate_terms.evaluate_sum("-2 + 3")).to eq ["-2 + 3", 1.0]
    end

    it 'when passed two terms without spaces, returns an error' do
      expect { evaluate_terms.evaluate_sum("2+3") }.to raise_error "Input must be a valid mathematical string separated by spaces"
    end

  end
end
