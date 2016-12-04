require 'spec_helper'
describe HitsHandler do
  describe '#opponent_id' do
    it 'returns right opponent for player 1' do
      game = Game.new(id: 1)
      Game.stub(:find).and_return(game)
      subject = described_class.new(1, 10)
      opponent_id = subject.send(:opponent_id)
      expect(opponent_id).to eq(2)
    end

    it 'returns right opponent for player 2' do
      game = Game.new(id: 2)
      Game.stub(:find).and_return(game)
      subject = described_class.new(2, 10)
      opponent_id = subject.send(:opponent_id)
      expect(opponent_id).to eq(1)
    end

  end

end
