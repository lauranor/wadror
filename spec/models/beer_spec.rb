require 'rails_helper'

RSpec.describe Beer, type: :model do
  it "creates and saves when name and style valid" do
    beer = Beer.create name:"Olunen", style:"Lager"

    expect(beer.valid?).to be(true)
    expect(Beer.count).to be(1)
  end

  it "doesnt create without name" do
    beer = Beer.create style:"IPA"

    expect(beer.valid?).to be(false)
    expect(Beer.count).to eq(0)
  end

  it "doensnt create without style" do
    beer = Beer.create name:"Kalja"

    expect(beer.valid?).to be(false)
    expect(Beer.count).to eq(0)
  end
end
