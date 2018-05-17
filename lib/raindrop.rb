# understands how to return a result based on number factors
class Raindrop
  attr_reader :number

  def raindrop_output(number)
    output = ''
    raise 'Input must be a number' unless number.is_a? Integer
    output += 'Pling' if factor_of?(3, number)
    output += 'Plang' if factor_of?(5, number)
    output += 'Plong' if factor_of?(7, number)
    output = number unless factor_of?(3, number) || factor_of?(5, number) || factor_of?(7, number)
    output
  end

  private

  def factor_of?(factor, number)
    true if (number % factor).zero?
  end
end
