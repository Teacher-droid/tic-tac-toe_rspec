# frozen_string_literal: true

require 'rubygems'
require_relative '../lib/board'
require_relative '../lib/game'
require_relative '../lib/player'
require_relative '../app'

RSpec.describe "A leak of 'X' and 'O' falling to the bingo" do
    describe Board do
      it 'is a noard' do
        expect(subject).to respond_to(:array)
      end