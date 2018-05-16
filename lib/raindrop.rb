class Raindrop

  def raindrop_output(number)
    output = ''
    if number %3 == 0
      output += "Pling"
    end
    if number %5 == 0
      output += "Plang"
    end
    output
  end
end
