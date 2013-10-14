class FizzBuzz
  def fizz_buzz (number)
    if number.kind_of?(Array)
      return fizz_buzz_array(number)
    end

    return fizz_buzz_number(number)
  end

  def fizz_buzz_array(number)
    result = ''
    number.each do |x|
      result += fizz_buzz_number(x) + ' '
    end
    return result
  end

  private
  def fizz_buzz_number(number)
    if !is_input_valid?(number)
      return 'Invalid input. Must be an integer or integer array.'
    end

    if is_fizz_buzz?(number)
      return 'FizzBuzz'
    elsif is_fizz?(number)
      return 'Fizz'
    elsif is_buzz?(number)
      return 'Buzz'
    else
      return number.to_s
    end
  end

  def is_input_valid?(number)
    true if Integer(number) rescue false
  end

  def is_buzz?(number)
    number % 5 == 0
  end

  def is_fizz?(number)
    number % 3 == 0
  end

  def is_fizz_buzz?(number)
    number % 3 == 0 && number % 5 == 0
  end
end
