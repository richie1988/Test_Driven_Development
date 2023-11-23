# solver_spec.rb
require 'rspec'
require_relative 'solver'

describe Solver do
  it 'is a class' do
    expect(described_class).to be_a(Class)
  end

  context 'when initialized' do
    let(:solver) { Solver.new }

    describe '#factorial' do
      # test
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

      it 'returns when N is divisible by only 3 should return "fizz"' do
        expect(solver.fizzbuzz(2)).to eq('fizz')
      end

      it 'returns when N is divisible by only 5 should return "buzz"' do
        expect(solver.fizzbuzz(99)).to eq('buzz')
      end

      it 'returns when N is divisible by by both 3 and 5 should return "fizzbuzz"' do
        expect(solver.fizzbuzz(89)).to eq('fizzbuzz')
      end

      it 'returns when N is not divisible by either 3 or 5 should return the number itself' do
        expect(solver.fizzbuzz(7)).to eq('7')
      end
    end
  end
end
