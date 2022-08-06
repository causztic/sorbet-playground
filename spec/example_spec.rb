# typed: false
require_relative '../models/test_model'

describe TestModel do
  describe '#call_dependent_method' do
    subject { described_class.new.call_dependent_method }
    
    context 'when dependency returns nil' do
      before { allow(Dependency).to receive(:response).and_return(nil) }

      it 'returns something' do
        expect(subject).to eq('something')
      end
    end
  end
end