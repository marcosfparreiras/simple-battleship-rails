require 'spec_helper'
describe EmptyBoardGenerator do
  describe '#generate' do
    it 'generates an empty board of size 100 filled with zeros' do
      expect(described_class.generate).to eq(Array.new(100, 0))
    end
  end
end
