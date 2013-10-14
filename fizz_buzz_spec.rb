require 'rspec'
require_relative 'fizz_buzz'

describe 'FizzBuzz method1' do
  before(:each) do
    @fb = FizzBuzz.new
  end

  it 'should return fizz when input 3' do
    @fb.fizz_buzz1(3).should == 'Fizz'
  end

  it 'should return buzz when input 5' do
    @fb.fizz_buzz1(5).should == 'Buzz'
  end

  it 'should return FizzBuzz when input 15' do
    @fb.fizz_buzz1(15).should == 'FizzBuzz'
  end

  it 'should return 7 when input 7' do
    @fb.fizz_buzz1(7).should == 7
  end
end