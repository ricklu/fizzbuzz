require 'rspec'
require_relative 'fizz_buzz'

describe 'FizzBuzz method' do
  before() do
    @fb = FizzBuzz.new
  end

  it 'should return "Fizz Buzz " when I input an [3, 5] array' do
   @fb.fizz_buzz([3, 5]).should == 'Fizz Buzz '
  end

  it 'should return error message if input non-number' do
    @fb.fizz_buzz('non-number').should == 'Invalid input. Must be an integer or integer array.'
  end

  it 'should return "Fizz" when input 3' do
    @fb.fizz_buzz(3).should == 'Fizz'
  end

  it 'should return "Buzz" when input 5' do
    @fb.fizz_buzz(5).should == 'Buzz'
  end

  it 'should return "FizzBuzz" when input 15' do
    @fb.fizz_buzz(15).should == 'FizzBuzz'
  end

  it 'should return "7" when input 7' do
    @fb.fizz_buzz(7).should == '7'
  end
end