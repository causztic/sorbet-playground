# typed: false
require_relative '../models/test_model'

describe TestModel do
  describe '#call_dependent_method' do
    subject { described_class.new.call_dependent_method }
    
    context 'when dependency returns nil' do
      before do
        # this stub is incorrect! maybe we can store the previous `receive` on chain and verify the signature?
        allow(Dependency).to receive(:response).and_return(nil)
      end

      it 'returns something' do
        expect(subject).to eq('something')
      end
    end
  end
end