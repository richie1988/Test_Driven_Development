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
      # test
    end
  end
end
