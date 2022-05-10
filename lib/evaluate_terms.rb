class EvaluateTerms 
  def initialize
    @components = []
  end

  def evaluate_sum(terms)
    @components = terms.split(" ")
    if @components.length == 1
      [terms, terms.to_f]
    else
      total = @components[0].to_f + @components[2].to_f
      [terms, total]
    end
  end

end
