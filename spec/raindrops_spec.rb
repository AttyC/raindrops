require './lib/raindrop.rb'

describe Raindrop do
  describe '#raindrop_output' do

    context 'when number is a factor of 3' do
      it 'returns "Pling"' do
        expect(subject.raindrop_output(3)).to eq "Pling"
      end
    end

    context 'when number is a factor of 5' do
      it 'returns "Plang"' do
        expect(subject.raindrop_output(5)).to eq "Plang"
      end
    end

    context 'when number is a factor of 7' do
      it 'returns "Plong"' do
        expect(subject.raindrop_output(7)).to eq "Plong"
      end
    end
    
    context 'when number is a factor of combined 3/5/7' do
      it 'returns "PlingPlong" if input is factor of 3 and 7' do
        expect(subject.raindrop_output(21)).to eq "PlingPlong"
      end
    end
  end
end
