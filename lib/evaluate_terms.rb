class EvaluateTerms 
  def initialize
    @components = []
    @total = nil
  end
 
  def evaluate(terms)
    if terms == "" then return ["", terms.to_f] end
    @components = terms.split(" ")
    check_input_valid
    operator
    return [terms, @total]
  end

  private

  def operator
    if @components[1] == "-"
      minus
    elsif @components[1] == "*"
      multiply
    elsif @components[1] == "/"
      divide
    else
      add
    end
  end

  def check_input_valid
    raise "Input must be a valid mathematical string separated by spaces" if @components[0].include?("+") == true
    raise "Math Error" if @components[0] != "0" && @components[0].to_f == 0.0
    raise "Argument Error" if @components.length > 3
  end

  def minus
    @total = @components[0].to_f - @components[2].to_f
  end

  def multiply
    @total = @components[0].to_f * @components[2].to_f
  end

  def add
    @total = @components[0].to_f + @components[2].to_f
  end

  def divide
    @total = @components[0].to_f / @components[2].to_f
  end

end
