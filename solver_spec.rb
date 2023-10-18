require 'rspec'
require_relative 'solver' # Require the solution file

describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'calculates factorial of 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'calculates factorial of a positive number' do
      expect(solver.factorial(5)).to eq(120)
    end

    it 'raises an error for a negative number' do
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'reverses a string' do
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when divisible by 3' do
      expect(solver.fizzbuzz(3)).to eq('fizz')
    end

    it 'returns "buzz" when divisible by 5' do
      expect(solver.fizzbuzz(5)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when divisible by 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns the number as a string for other cases' do
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end
