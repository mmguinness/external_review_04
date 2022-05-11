require './lib/evaluate_terms.rb'

describe EvaluateTerms do

  subject(:evaluate_terms) { described_class.new}
  describe '#evaluate' do
    it 'when passed a single term, returns the original term and evaluated total' do
      expect(evaluate_terms.evaluate("2")).to eq ["2", 2.0]
    end

    it 'when passed a single negative term, returns the original term and evaluated total' do
      expect(evaluate_terms.evaluate("-2")).to eq ["-2", -2.0]
    end

    it 'when passed two terms, returns the original terms and evaluated total' do
      expect(evaluate_terms.evaluate("2 + 3")).to eq ["2 + 3", 5.0]
    end

    it 'when passed two terms, returns the original terms and evaluated total' do
      expect(evaluate_terms.evaluate("-2 + 3")).to eq ["-2 + 3", 1.0]
    end

    it 'when passed two terms without spaces, returns an error' do
      expect { evaluate_terms.evaluate("2+3") }.to raise_error "Input must be a valid mathematical string separated by spaces"
    end

    it 'when passed no terms, just a string, returns an error' do
      expect { evaluate_terms.evaluate("What's up, calculator!?") }.to raise_error "Math Error"
    end

    it 'when passed no terms, just a string, returns an error' do
      expect { evaluate_terms.evaluate("I'm a string not a term") }.to raise_error "Math Error"
    end

    it 'when passed too many terms, returns an error' do
      expect { evaluate_terms.evaluate("5 + 5 + 5 + 5") }.to raise_error "Argument Error"
    end

    it 'when passed "0" as a term, returns the original terms and evaluated total' do
      expect(evaluate_terms.evaluate("0")).to eq ["0", 0.0]
    end

    it 'when passed "" as a term, returns the original terms and evaluated total' do
      expect(evaluate_terms.evaluate("")).to eq ["", 0.0]
    end

    it 'when passed two terms, with a "-", returns the original terms and evaluated total' do
      expect(evaluate_terms.evaluate("3 - 1")).to eq ["3 - 1", 2.0]
    end

    it 'when passed two terms, with a "-", returns the original terms and evaluated total' do
      expect(evaluate_terms.evaluate("-8 - 1")).to eq ["-8 - 1", -9.0]
    end

    it 'when passed two terms, with a "*", returns the original terms and evaluated total' do
      expect(evaluate_terms.evaluate("2 * 3")).to eq ["2 * 3", 6.0]
    end

    it 'when passed two terms, with a "*", returns the original terms and evaluated total' do
      expect(evaluate_terms.evaluate("2 * -3")).to eq ["2 * -3", -6.0]
    end

    it 'when passed two terms, with a "/", returns the original terms and evaluated total' do
      expect(evaluate_terms.evaluate("6 / 3")).to eq ["6 / 3", 2.0]
    end

    it 'when passed two terms, with a "/", returns the original terms and evaluated total' do
      expect(evaluate_terms.evaluate("6 / -3")).to eq ["6 / -3", -2.0]
    end
  end
end
