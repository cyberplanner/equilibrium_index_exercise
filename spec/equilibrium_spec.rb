require 'equilibrium'

describe Equilibrium do
  let(:equilibrium) { described_class.new }
  it "has a solution method" do
    expect(equilibrium).to respond_to(:solution).with(1).argument
  end


end
