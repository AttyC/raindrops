class Raindrop
  attr_reader :number

  def raindrop_output(number)
    output = ''

    output += "Pling" if factor_of_3(number)
    output += "Plang" if factor_of_5(number)
    output += "Plong" if factor_of_7(number)
    output = number if !factor_of_3(number) && !factor_of_5(number) && !factor_of_7(number)
    output
  end

  def factor_of_3(number)
    true if number %3 == 0
  end

  def factor_of_5(number)
    true if number %5 == 0
  end

  def factor_of_7(number)
    true if number %7 == 0
  end
end
