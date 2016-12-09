require 'equilibrium'

describe Equilibrium do
  let(:equilibrium) { described_class.new }
  it "has a solution method" do
    expect(equilibrium).to respond_to(:solution).with(1).argument
  end

  describe "#solution" do
    it "returns equilibrium index of the given array" do
      arr1 = [-1, 3, -4, 5, 1, -6, 2, 1]
      expect(equilibrium.solution(arr1)).to eq [1, 3, 7]
    end
  end
end
