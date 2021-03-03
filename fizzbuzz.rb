# return every number from 1 to 100. if the number is divisible by 3, return 'fizz' instead of the number. if the number is divisible by 5, return 'buzz' instead of the number. if the number is divisible by both 3 and 5, return 'fizzbuzz' instead of the number.

require 'rspec'

class Fizzbuzz
  def output(num)
    return "FIZZBUZZ" if num % 15 == 0
    return "FIZZ" if num % 3 == 0
    return "BUZZ" if num % 5 == 0
    return num
  end

  def go
    (1..100).each do |number|
      puts output(number)
    end
  end
end

RSpec.describe Fizzbuzz do
  describe '#output' do
    it 'should return 1 if given 1' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(1)).to eq(1)
    end
    it 'should return 2 if given 2' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(2)).to eq(2)
    end
    it 'should return FIZZ if given 3' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(3)).to eq('FIZZ')
    end
    it 'should return BUZZ if given 5' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(5)).to eq('BUZZ')
    end
    it 'should return FIZZ if given 6' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(6)).to eq('FIZZ')
    end
    it 'should return BUZZ if given 10' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(10)).to eq('BUZZ')
    end
    it 'should return FIZZBUZZ if given 15' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(15)).to eq('FIZZBUZZ')
    end
    it 'should return FIZZBUZZ if given 30' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(30)).to eq('FIZZBUZZ')
    end
  end
end