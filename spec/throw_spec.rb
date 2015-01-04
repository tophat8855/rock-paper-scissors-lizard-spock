require 'spec_helper'
require 'throw'

describe Throw do
  it 'gives the numeric value of the rock throw' do
    rock_throw = Throw.new('rock')
    rock_throw_value = rock_throw.value

    expect(rock_throw_value).to eq(0)
  end

  it 'gives the numeric value of the lizard throw' do
    lizard_throw = Throw.new('lizard')
    lizard_throw_value = lizard_throw.value

    expect(lizard_throw_value).to eq(3)
  end

  it 'determines who wins' do
    rock_throw = Throw.new('rock')
    scissors_throw = Throw.new('scissors')
    win = rock_throw.exterminates? scissors_throw

    expect(win).to eq(true)
  end

  it 'determines who wins' do
    spock_throw = Throw.new('Spock')
    paper_throw = Throw.new('paper')
    win = spock_throw.exterminates? paper_throw

    expect(win).to eq(false)
  end

  it 'evaluates a tie to no one winning' do
    lizard_throw = Throw.new('lizard')
    lizart_throw = Throw.new('lizard')
    win = lizard_throw.exterminates? lizard_throw

    expect(win).to eq(false)
  end

end
