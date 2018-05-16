require './lib/raindrop.rb'

describe Raindrop do
  describe '#raindrop_output' do
    it 'returns "Pling" if input is factor of 3' do
      expect(subject.raindrop_output(3)).to eq "Pling"
    end
  end
end
