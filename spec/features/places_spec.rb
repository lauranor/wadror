require 'rails_helper'

describe "Places" do
  it "if one is returned by the API, it is shown at the page" do
    allow(BeermappingApi).to receive(:places_in).with("kumpula").and_return(
        [ Place.new( name:"Oljenkorsi", id: 1 ) ]
    )

    visit places_path
    fill_in('city', with: 'kumpula')
    click_button "Search"

    expect(page).to have_content "Oljenkorsi"
  end

  it "if many is returned by the API, all are shown at the page" do
    allow(BeermappingApi).to receive(:places_in).with("kumpula").and_return(
        [ Place.new( name:"Oljenkorsi", id: 1 ), Place.new( name:"Koljenorsi", id: 2), Place.new( name:"Olotila", id: 3) ]
    )

    visit places_path
    fill_in('city', with: 'kumpula')
    click_button "Search"

    expect(page).to have_content "Oljenkorsi"
    expect(page).to have_content "Koljenorsi"
    expect(page).to have_content "Olotila"

  end

  it "works if no places to show" do
    allow(BeermappingApi).to receive(:places_in).with("salla").and_return(
        []
    )

    visit places_path
    fill_in('city', with: 'salla')
    click_button "Search"

    expect(page).to have_content "No locations in salla"
  end
end