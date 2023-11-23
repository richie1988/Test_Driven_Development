# solver_spec.rb

require 'rspec'
require_relative '../classes/solver'

describe Solver do
  it 'is a class' do
    expect(described_class).to be_a(Class)
  end

  context 'when initialized' do
    let(:solver) { Solver.new }

    describe '#factorial' do
      it 'is a valid method' do
        expect(solver.respond_to?(:factorial)).to be(true)
      end

      it 'returns 1 for factorial of 0' do
        expect(solver.factorial(0)).to eq(1)
      end

      it 'returns the factorial for positive numbers' do
        expect(solver.factorial(1)).to eq(1)
        expect(solver.factorial(10)).to eq(3_628_800)
      end

      it 'raises an exception for negative numbers' do
        expect { solver.factorial(-2) }.to raise_error(ArgumentError, 'Factorial is not defined for negative numbers')
      end
    end

    describe '#reverse' do
      it 'is a valid method' do
        expect(solver.respond_to?(:reverse)).to be(true)
      end

      it 'returns the reversed string' do
        expect(solver.reverse('hello')).to eq('olleh')
      end
    end

    describe '#fizzbuzz' do
      it 'is a valid method' do
        expect(solver.respond_to?(:fizzbuzz)).to be(true)
      end

      it 'returns "fizz" when N is divisible by only 3' do
        expect(solver.fizzbuzz(3)).to eq('fizz')
      end

      it 'returns "buzz" when N is divisible by only 5' do
        expect(solver.fizzbuzz(5)).to eq('buzz')
      end

      it 'returns "fizzbuzz" when N is divisible by both 3 and 5' do
        expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      end

      it 'returns the number itself when N is not divisible by either 3 or 5' do
        expect(solver.fizzbuzz(7)).to eq('7')
      end
    end
  end
end
