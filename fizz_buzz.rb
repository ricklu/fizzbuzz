class FizzBuzz
  def fizz_buzz1 (number)
    if number % 3 == 0 && number % 5 == 0
      return 'FizzBuzz'
    elsif number % 3 == 0
      return 'Fizz'
    elsif number % 5 == 0
      return 'Buzz'
    else
      return number
    end
  end

  def fizz_buzz2 (number)
    ret = ''
    ret += 'Fizz' if number % 3 == 0
    ret += 'Buzz' if number % 5 == 0
    return ret.empty? ? number : ret
  end
end
