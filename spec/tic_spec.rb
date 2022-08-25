# frozen_string_literal: true
require 'simplecov'
SimpleCov.start

require 'rubygems'
require_relative '../lib/board'
require_relative '../lib/game'
require_relative '../lib/player'

RSpec.describe "A leak of 'X' and 'O' falling to the bingo" do
    describe Board do
      it 'is a board' do
        expect(subject).to respond_to(:array)
      end
    end
end

describe Game do
context "Lezzz go !" do
  let (:game) do
    game = Game.new('tictac')
    allow(game).to receive(:new,'tictac')
  end
  it "Game rocknroll" do
    expect(described_class).to eq(Game)
  end

  it "Own board" do
    expect(subject).to have_attributes(:board)
  end

  it "Player one turn" do
    expect(subject).to have_attributes(:player1)
  end

  it "Player two turn" do
    expect(subject).to have_attributes(:player2)
  end
end

end