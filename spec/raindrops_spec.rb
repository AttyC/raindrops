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
      it 'returns "PlingPlang" if input is factor of 3 and 5' do
        expect(subject.raindrop_output(15)).to eq "PlingPlang"
      end
      it 'returns "PlingPlong" if input is factor of 3 and 7' do
        expect(subject.raindrop_output(21)).to eq "PlingPlong"
      end
      it 'returns "PlangPlong" if input is factor of 5 and 7' do
        expect(subject.raindrop_output(35)).to eq "PlangPlong"
      end
      it 'returns "PlingPlangPlong" if input is factor of 3, 5 and 7' do
        expect(subject.raindrop_output(105)).to eq "PlingPlangPlong"
      end
    end

    context 'when number is not a factor of 3/5/7' do
      it 'returns the number' do
        expect(subject.raindrop_output(34)).to eq 34
      end
    end
    context 'when number is not an integer' do
      it 'raises an error' do
        expect{subject.raindrop_output('House')}.to raise_error 'Input must be a number'
      end
    end
  end
end
