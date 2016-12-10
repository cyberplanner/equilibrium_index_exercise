require 'equilibrium'

describe Equilibrium do
  let(:equilibrium) { described_class.new }
  it "has a solution method" do
    expect(equilibrium).to respond_to(:find_first_equilibrium).with(1).argument
  end

  describe "#solution" do
    context "if equilibrium index exists" do
      it "returns one of the equilibrium index of the given array" do
          arr = [-1, 3, -4, 5, 1, -6, 2, 1]
          expect(equilibrium.find_first_equilibrium(arr)).to eq 1

          arr = [1, 2, 3, 4, 3, 2, 1]
          expect(equilibrium.find_first_equilibrium(arr)).to eq 3

          arr = [100, 0, 66, 32, 2]
          expect(equilibrium.find_first_equilibrium(arr)).to eq 1
      end
    end


    context "if no equilibrium index exists" do
      it "returns -1" do
        arr = [1, 2, 3, 4, 4, 3, 2, 1]
        expect(equilibrium.find_first_equilibrium(arr)).to eq -1
      end
    end
  end


end
